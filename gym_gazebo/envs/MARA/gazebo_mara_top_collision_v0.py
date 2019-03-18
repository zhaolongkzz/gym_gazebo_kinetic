import gym
import rospy
import roslaunch
import time
import os
import numpy as np
from gym import utils, spaces
from gym_gazebo.envs import gazebo_env
from geometry_msgs.msg import Pose
from geometry_msgs.msg import Twist
from std_srvs.srv import Empty
from sensor_msgs.msg import LaserScan
from gym.utils import seeding
import copy
import rospkg
import threading

from gazebo_msgs.srv import SpawnModel

from geometry_msgs.msg import Vector3
from geometry_msgs.msg import WrenchStamped
from gazebo_msgs.msg import ContactState
from gazebo_msgs.msg import LinkState

from sensor_msgs.msg import CompressedImage
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import Empty as stdEmpty

from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from control_msgs.msg import JointTrajectoryControllerState
from baselines.agent.scara_arm.tree_urdf import treeFromFile # For KDL Jacobians
from PyKDL import Jacobian, Chain, ChainJntToJacSolver, JntArray # For KDL Jacobians

import cv2
import transforms3d as tf
import write_csv as csv_file

# from custom baselines repository
from baselines.agent.utility.general_utils import forward_kinematics, get_ee_points, rotation_from_matrix, \
    get_rotation_matrix,quaternion_from_matrix # For getting points and velocities.

class MSG_INVALID_JOINT_NAMES_DIFFER(Exception):
    """Error object exclusively raised by _process_observations."""
    pass


class GazeboMARATopCollisionv0Env(gazebo_env.GazeboEnv):
    """
    This environment present a modular SCARA robot with a range finder at its
    end pointing towards the workspace of the robot. The goal of this environment is
    defined to reach the center of the "H" or the "O" from the "H-ROS" logo within the worspace.
    This environment uses `slowness=1` and matches the delay between actions/observations
    to this value (slowness). In other words, actions are taken at "1/slowness" rate.

    Reward is determined ... (TODO: describe the heuristic or reward calculation method)
    """
    def __init__(self):
        """
        Initialize the SCARA environemnt
            NOTE: This environment uses ROS and interfaces.

            TODO: port everything to ROS 2 natively
        """
        # Launch the simulation with the given launchfile name
        gazebo_env.GazeboEnv.__init__(self, "MARATop6DOF_Collision_v0.launch")

        # TODO: cleanup this variables, remove the ones that aren't used
        # class variables
        self._observation_msg = None
        self.scale = None  # must be set from elsewhere based on observations
        self.bias = None
        self.x_idx = None
        self.obs = None
        self.reward = None
        self.done = None
        self.reward_dist = None
        self.reward_ctrl = None
        self.action_space = None
        self.max_episode_steps = 1000 # now used in all algorithms, this should reflect the lstm step size, otherwqise it restarts two times
        self.rand_target_thresh = 40
        self.iterator = 0
        # default to seconds
        self.slowness = 1
        self.slowness_unit = 'sec'
        self.reset_jnts = True
        self._collision_msg = None

        self._time_lock = threading.RLock()

        #############################
        #   Environment hyperparams
        #############################
        # target, where should the agent reach

        EE_POS_TGT = np.asmatrix([-0.40028, 0.095615, 0.72466 + 0.1]) # alex2
        # EE_POS_TGT = np.asmatrix([-0.386752, -0.000756, 1.40557]) # easy point
        # EE_POS_TGT = np.asmatrix([-0.173762, -0.0124312, 1.60415]) # for testing collision_callback
        # EE_POS_TGT = np.asmatrix([-0.580238, -0.179591, 0.72466]) # rubik touching the bar
        # EE_ROT_TGT = np.asmatrix([[-0.00128296,  0.9999805 ,  0.00611158],
        #                            [ 0.00231397, -0.0061086 ,  0.99997867],
        #                            [ 0.9999965 ,  0.00129708, -0.00230609]])
        # EE_POS_TGT = np.asmatrix([-0.390768, 0.0101776, 0.725335]) # 200 cm from the z axis
        # EE_POS_TGT = np.asmatrix([0.0, 0.001009, 1.64981])
        # EE_POS_TGT = np.asmatrix([-0.4023037912211465, 0.15501116706606247, 0.7238499613771884]) # 200 cm from the z axis

        # # EE_POS_TGT = np.asmatrix([0.3305805, -0.1326121, 0.4868]) # center of the H
        # EE_ROT_TGT = np.asmatrix([[-0.99521107,  0.09689605, -0.01288708],
        #                           [-0.09768035, -0.99077857,  0.09389558],
        #                           [-0.00367013,  0.09470474,  0.99549864]])


        # EE_ROT_TGT = np.asmatrix([[-0.99521107,  0.09689605, -0.01288708],
        #                           [-0.09768035, -0.99077857,  0.09389558],
        #                           [-0.00367013,  0.09470474,  0.99549864]])
        EE_ROT_TGT = np.asmatrix([[1, 0, 0], [0, 1, 0], [0, 0, 1]])
        # EE_ROT_TGT = np.asmatrix([[0.79660969, -0.51571238,  0.31536287], [0.51531424,  0.85207952,  0.09171542], [-0.31601302,  0.08944959,  0.94452874]]) # original orientation
        EE_POINTS = np.asmatrix([[0, 0, 0]])
        EE_VELOCITIES = np.asmatrix([[0, 0, 0]])
        # Initial joint position
        # INITIAL_JOINTS = np.array([0., 0., 1., 0., 1.57, 0.])
        INITIAL_JOINTS = np.array([0., 0., 0., 0., 0., 0.])
        # Used to initialize the robot, #TODO, clarify this more
        # STEP_COUNT = 2  # Typically 100.
        # slowness = 10000000 # 10 ms, where 1 second is real life simulation
        # slowness = 1000000 # 1 ms, where 1 second is real life simulation
        # slowness = 1 # use >10 for running trained network in the simulation
        # slowness = 10 # use >10 for running trained network in the simulation

        # Topics for the robot publisher and subscriber.
        JOINT_PUBLISHER = '/mara_controller/command'
        JOINT_SUBSCRIBER = '/mara_controller/state'
        LINK_STATE_PUBLISHER = '/gazebo/set_link_state'

        # joint names:
        MOTOR1_JOINT = 'motor1'
        MOTOR2_JOINT = 'motor2'
        MOTOR3_JOINT = 'motor3'
        MOTOR4_JOINT = 'motor4'
        MOTOR5_JOINT = 'motor5'
        MOTOR6_JOINT = 'motor6'

        # Set constants for links
        TABLE = 'table'

        BASE = 'base_link'

        MARA_MOTOR1_LINK = 'motor1_link'
        MARA_MOTOR2_LINK = 'motor2_link'
        MARA_MOTOR3_LINK = 'motor3_link'
        MARA_MOTOR4_LINK = 'motor4_link'
        MARA_MOTOR5_LINK = 'motor5_link'
        MARA_MOTOR6_LINK = 'motor6_link'
        EE_LINK = 'ee_link'


        # EE_LINK = 'ee_link'
        JOINT_ORDER = [MOTOR1_JOINT, MOTOR2_JOINT, MOTOR3_JOINT,
                       MOTOR4_JOINT, MOTOR5_JOINT, MOTOR6_JOINT]
        LINK_NAMES = [TABLE, BASE, MARA_MOTOR1_LINK, MARA_MOTOR2_LINK,
                            MARA_MOTOR3_LINK, MARA_MOTOR4_LINK,
                            MARA_MOTOR5_LINK, MARA_MOTOR6_LINK,
                      EE_LINK]

        reset_condition = {
            'initial_positions': INITIAL_JOINTS,
             'initial_velocities': []
        }
        #############################

        # TODO: fix this and make it relative
        # Set the path of the corresponding URDF file from "assets"
        URDF_PATH = rospkg.RosPack().get_path("mara_description") + "/urdf/mara_demo_camera_top.urdf"

        m_joint_order = copy.deepcopy(JOINT_ORDER)
        m_link_names = copy.deepcopy(LINK_NAMES)
        m_joint_publishers = copy.deepcopy(JOINT_PUBLISHER)
        m_joint_subscribers = copy.deepcopy(JOINT_SUBSCRIBER)
        ee_pos_tgt = EE_POS_TGT
        ee_rot_tgt = EE_ROT_TGT

        # Initialize target end effector position
        ee_tgt = np.ndarray.flatten(get_ee_points(EE_POINTS, ee_pos_tgt, ee_rot_tgt).T)
        self.realgoal = ee_tgt
        self.target_orientation = ee_rot_tgt

        self.environment = {
            # rk changed this to for the mlsh
            # 'ee_points_tgt': ee_tgt,
            'ee_points_tgt': self.realgoal,
            'ee_point_tgt_orient': self.target_orientation,
            'joint_order': m_joint_order,
            'link_names': m_link_names,
            # 'slowness': slowness,
            'reset_conditions': reset_condition,
            'tree_path': URDF_PATH,
            'joint_publisher': m_joint_publishers,
            'joint_subscriber': m_joint_subscribers,
            'end_effector_points': EE_POINTS,
            'end_effector_velocities': EE_VELOCITIES,
        }

        # self.spec = {'timestep_limit': 5, 'reward_threshold':  950.0,}
        # Subscribe to the appropriate topics, taking into account the particular robot
        # ROS 1 implementation
        self._pub = rospy.Publisher(JOINT_PUBLISHER, JointTrajectory, queue_size=1)
        self._sub = rospy.Subscriber(JOINT_SUBSCRIBER, JointTrajectoryControllerState, self.observation_callback)
        self._sub_coll = rospy.Subscriber('/gazebo_contacts',ContactState, self.collision_callback)
        self._pub_link_state = rospy.Publisher(LINK_STATE_PUBLISHER, LinkState, queue_size=1)

        # Initialize a tree structure from the robot urdf.
        #   note that the xacro of the urdf is updated by hand.
        # The urdf must be compiled.
        _, self.ur_tree = treeFromFile(self.environment['tree_path'])
        # Retrieve a chain structure between the base and the start of the end effector.
        self.scara_chain = self.ur_tree.getChain(self.environment['link_names'][0], self.environment['link_names'][-1])
        # print("nr of jnts: ", self.scara_chain.getNrOfJoints())
        # Initialize a KDL Jacobian solver from the chain.
        self.jac_solver = ChainJntToJacSolver(self.scara_chain)
        #print(self.jac_solver)
        self._observations_stale = [False for _ in range(1)]
        #print("after observations stale")
        self._currently_resetting = [False for _ in range(1)]
        self.reset_joint_angles = [None for _ in range(1)]

        # TODO review with Risto, we might need the first observation for calling step()
        # observation = self.take_observation()
        # assert not done
        # self.obs_dim = observation.size
        """
        obs_dim is defined as:
        num_dof + end_effector_points=3 + end_effector_velocities=3
        end_effector_points and end_effector_velocities is constant and equals 3
        recently also added quaternion to the obs, which has dimension=4
        """
        #
        self.obs_dim = self.scara_chain.getNrOfJoints() + 9#7 #6 hardcode it for now
        # # print(observation, _reward)

        # # Here idially we should find the control range of the robot. Unfortunatelly in ROS/KDL there is nothing like this.
        # # I have tested this with the mujoco enviroment and the output is always same low[-1.,-1.], high[1.,1.]
        # #bounds = self.model.actuator_ctrlrange.copy()
        low = -np.pi * np.ones(self.scara_chain.getNrOfJoints())
        high = -low
        self.action_space = spaces.Box(low, high, dtype=np.float32)
        high = np.inf*np.ones(self.obs_dim)
        low = -high
        self.observation_space = spaces.Box(low, high, dtype=np.float32)

        self.add_model_urdf = rospy.ServiceProxy('/gazebo/spawn_urdf_model', SpawnModel)
        self.reset_proxy = rospy.ServiceProxy('/gazebo/reset_simulation', Empty)

        robot_namespace = ""
        pose = Pose()
        pose.position.x = EE_POS_TGT[0,0];
        pose.position.y = EE_POS_TGT[0,1];
        pose.position.z = EE_POS_TGT[0,2];
        pose.orientation.x = 0;
        pose.orientation.y= 0;
        pose.orientation.z = 0;
        pose.orientation.w = 0;
        reference_frame = "world"

        self.assets_path = os.path.abspath(os.path.join(rospkg.RosPack().get_path("gazebo_domain_randomizer"), os.pardir)) + "/assets"

        file_xml = open(self.assets_path + '/models/urdf/target_point.urdf' ,mode='r')
        model_xml = file_xml.read()
        file_xml.close()

        rospy.wait_for_service('/gazebo/spawn_urdf_model')
        try:
            self.add_model_urdf(model_name="target",
                                model_xml=model_xml,
                                robot_namespace=robot_namespace,
                                initial_pose=pose,
                                reference_frame=reference_frame)
        except rospy.ServiceException as e:
            print('Error adding urdf model')

        self._seed()

    def collision_callback(self, message):
        """
        Callback method for the subscriber of Collision data
        """

        if message.collision1_name != message.collision2_name:
            # neither obj nor obstacle colliding with table
            if "obj::" not in message.collision1_name and "obstacle" not in message.collision1_name or "table_fixed_joint_lump__mara_work_area_link_collision_4" not in message.collision2_name:
                # neither obj colliding with obstacle and vice-versa nor objs colliding each other nor obstacles colliding each other
                if "obj::" not in (message.collision1_name and message.collision2_name) and "obstacle" not in (message.collision1_name and message.collision2_name):
                    self._collision_msg = message

    def observation_callback(self, message):
        """
        Callback method for the subscriber of JointTrajectoryControllerState
        """
        self._observation_msg =  message

    def init_time(self, slowness =1, slowness_unit='sec', reset_jnts=True):
        self.slowness = slowness
        self.slowness_unit = slowness_unit
        self.reset_jnts = reset_jnts
        print("slowness: ", self.slowness)
        print("slowness_unit: ", self.slowness_unit, "type of variable: ", type(slowness_unit))
        print("reset joints: ", self.reset_jnts, "type of variable: ", type(self.reset_jnts))

    def get_trajectory_message(self, action, robot_id=0):
        """
        Helper function.
        Wraps an action vector of joint angles into a JointTrajectory message.
        The velocities, accelerations, and effort do not control the arm motion
        """
        # Set up a trajectory message to publish.
        action_msg = JointTrajectory()
        action_msg.joint_names = self.environment['joint_order']
        # Create a point to tell the robot to move to.
        target = JointTrajectoryPoint()
        action_float = [float(i) for i in action]
        target.positions = action_float
        # These times determine the speed at which the robot moves:
        # it tries to reach the specified target position in 'slowness' time.
        if (self.slowness_unit == 'sec') or (self.slowness_unit is None):
            target.time_from_start.secs = self.slowness
        elif (self.slowness_unit == 'nsec'):
            target.time_from_start.nsecs = self.slowness
        else:
            print("Unrecognized unit. Please use sec or nsec.")

        # Package the single point into a trajectory of points with length 1.
        action_msg.points = [target]
        return action_msg

    def process_observations(self, message, agent, robot_id=0):
        """
        Helper fuinction to convert a ROS message to joint angles and velocities.
        Check for and handle the case where a message is either malformed
        or contains joint values in an order different from that expected observation_callback
        in hyperparams['joint_order']
        """
        if not message:
            print("Message is empty");
        else:
            # # Check if joint values are in the expected order and size.
            if message.joint_names != agent['joint_order']:
                # Check that the message is of same size as the expected message.
                if len(message.joint_names) != len(agent['joint_order']):
                    raise MSG_INVALID_JOINT_NAMES_DIFFER

                # Check that all the expected joint values are present in a message.
                if not all(map(lambda x,y: x in y, message.joint_names,
                    [self._valid_joint_set[robot_id] for _ in range(len(message.joint_names))])):
                    raise MSG_INVALID_JOINT_NAMES_DIFFER
                    print("Joints differ")
            return np.array(message.actual.positions) # + message.actual.velocities

    def get_jacobians(self, state, robot_id=0):
        """
        Produce a Jacobian from the urdf that maps from joint angles to x, y, z.
        This makes a 6x6 matrix from 6 joint angles to x, y, z and 3 angles.
        The angles are roll, pitch, and yaw (not Euler angles) and are not needed.
        Returns a repackaged Jacobian that is 3x6.
        """
        # Initialize a Jacobian for self.scara_chain.getNrOfJoints() joint angles by 3 cartesian coords and 3 orientation angles
        jacobian = Jacobian(self.scara_chain.getNrOfJoints())
        # Initialize a joint array for the present self.scara_chain.getNrOfJoints() joint angles.
        angles = JntArray(self.scara_chain.getNrOfJoints())
        # Construct the joint array from the most recent joint angles.
        for i in range(self.scara_chain.getNrOfJoints()):
            angles[i] = state[i]
        # Update the jacobian by solving for the given angles.observation_callback
        self.jac_solver.JntToJac(angles, jacobian)
        # Initialize a numpy array to store the Jacobian.
        J = np.array([[jacobian[i, j] for j in range(jacobian.columns())] for i in range(jacobian.rows())])
        # Only want the cartesian position, not Roll, Pitch, Yaw (RPY) Angles
        ee_jacobians = J
        return ee_jacobians

    def get_ee_points_jacobians(self, ref_jacobian, ee_points, ref_rot):
        """
        Get the jacobians of the points on a link given the jacobian for that link's origin
        :param ref_jacobian: 6 x 6 numpy array, jacobian for the link's origin
        :param ee_points: N x 3 numpy array, points' coordinates on the link's coordinate system
        :param ref_rot: 3 x 3 numpy array, rotational matrix for the link's coordinate system
        :return: 3N x 6 Jac_trans, each 3 x 6 numpy array is the Jacobian[:3, :] for that point
                 3N x 6 Jac_rot, each 3 x 6 numpy array is the Jacobian[3:, :] for that point
        """
        ee_points = np.asarray(ee_points)
        ref_jacobians_trans = ref_jacobian[:3, :]
        ref_jacobians_rot = ref_jacobian[3:, :]
        end_effector_points_rot = np.expand_dims(ref_rot.dot(ee_points.T).T, axis=1)
        ee_points_jac_trans = np.tile(ref_jacobians_trans, (ee_points.shape[0], 1)) + \
                                        np.cross(ref_jacobians_rot.T, end_effector_points_rot).transpose(
                                            (0, 2, 1)).reshape(-1, self.scara_chain.getNrOfJoints())
        ee_points_jac_rot = np.tile(ref_jacobians_rot, (ee_points.shape[0], 1))
        return ee_points_jac_trans, ee_points_jac_rot

    def get_ee_points_velocities(self, ref_jacobian, ee_points, ref_rot, joint_velocities):
        """
        Get the velocities of the points on a link
        :param ref_jacobian: 6 x 6 numpy array, jacobian for the link's origin
        :param ee_points: N x 3 numpy array, points' coordinates on the link's coordinate system
        :param ref_rot: 3 x 3 numpy array, rotational matrix for the link's coordinate system
        :param joint_velocities: 1 x 6 numpy array, joint velocities
        :return: 3N numpy array, velocities of each point
        """
        ref_jacobians_trans = ref_jacobian[:3, :]
        ref_jacobians_rot = ref_jacobian[3:, :]
        ee_velocities_trans = np.dot(ref_jacobians_trans, joint_velocities)
        ee_velocities_rot = np.dot(ref_jacobians_rot, joint_velocities)
        ee_velocities = ee_velocities_trans + np.cross(ee_velocities_rot.reshape(1, 3),
                                                       ref_rot.dot(ee_points.T).T)
        return ee_velocities.reshape(-1)

    def take_observation(self):
        """
        Take observation from the environment and return it.
        TODO: define return type
        """
        obs_message = self._observation_msg
        if obs_message is None:
            return None

        # Collect the end effector points and velocities in
        # cartesian coordinates for the process_observationsstate.
        # Collect the present joint angles and velocities from ROS for the state.
        last_observations = self.process_observations(obs_message, self.environment)
        # # # Get Jacobians from present joint angles and KDL trees
        # # # The Jacobians consist of a 6x6 matrix getting its from from
        # # # (# joint angles) x (len[x, y, z] + len[roll, pitch, yaw])
        ee_link_jacobians = self.get_jacobians(last_observations)
        if self.environment['link_names'][-1] is None:
            print("End link is empty!!")
            return None
        else:
            trans, rot = forward_kinematics(self.scara_chain,
                                        self.environment['link_names'],
                                        last_observations[:self.scara_chain.getNrOfJoints()],
                                        base_link=self.environment['link_names'][0],
                                        end_link=self.environment['link_names'][-1])

            rotation_matrix = np.eye(4)
            rotation_matrix[:3, :3] = rot
            rotation_matrix[:3, 3] = trans
            # angle, dir, _ = rotation_from_matrix(rotation_matrix)
            # current_quaternion = np.array([angle]+dir.tolist())#

            # # I need this calculations for the new reward function, need to send them back to the run mara or calculate them here
            # current_quaternion = quaternion_from_matrix(rotation_matrix)
            # tgt_quartenion = quaternion_from_matrix(self.target_orientation)
            current_quaternion = tf.quaternions.mat2quat(rot) #[w, x, y ,z]
            tgt_quartenion = tf.quaternions.mat2quat(self.target_orientation)

            # A  = np.vstack([current_quaternion, np.ones(len(current_quaternion))]).T
            #quat_error = np.linalg.lstsq(A, tgt_quartenion)[0]

            quat_error = current_quaternion * tgt_quartenion.conjugate()
            rot_vec_err, _ = tf.quaternions.quat2axangle(quat_error)

            # convert quat to np arrays
            # quat_error = np.asarray(quat_error, dtype=np.quaternion).view((np.double, 4))

            # RK:  revisit this later, we only take one angle difference here!
            # angle_diff = 2 * np.arccos(np.clip(quat_error[..., 0], -1., 1.))

            current_ee_tgt = np.ndarray.flatten(get_ee_points(self.environment['end_effector_points'],
                                                              trans,
                                                              rot).T)
            ee_points = current_ee_tgt - self.realgoal#self.environment['ee_points_tgt']
            ee_points_jac_trans, _ = self.get_ee_points_jacobians(ee_link_jacobians,
                                                                   self.environment['end_effector_points'],
                                                                   rot)
            ee_velocities = self.get_ee_points_velocities(ee_link_jacobians,
                                                           self.environment['end_effector_points'],
                                                           rot,
                                                           last_observations)

            # Concatenate the information that defines the robot state
            # vector, typically denoted asrobot_id 'x'.
            state = np.r_[np.reshape(last_observations, -1),
                          np.reshape(ee_points, -1),
                          np.reshape(rot_vec_err, -1),
                          np.reshape(ee_velocities, -1),]
            return state

    def rmse_func(self, ee_points):
        """
        Computes the Residual Mean Square Error of the difference between current and desired end-effector position
        """
        rmse = np.sqrt(np.mean(np.square(ee_points), dtype=np.float32))
        return rmse

    def _seed(self, seed=None):
        self.np_random, seed = seeding.np_random(seed)
        return [seed]

    def step(self, action):
        """
        Implement the environment step abstraction. Execute action and returns:
            - action
            - observation
            - reward
            - done (status)
        """
        self.iterator+=1

        self._pub.publish(self.get_trajectory_message(action[:self.scara_chain.getNrOfJoints()]))

        # # Take an observation
        # TODO: program this better, check that ob is not None, etc.
        self.ob = self.take_observation()
        while(self.ob is None):
            self.ob = self.take_observation()

        self.reward_dist = -self.rmse_func(self.ob[self.scara_chain.getNrOfJoints():(self.scara_chain.getNrOfJoints()+3)])

        if self._collision_msg is not None:
            if self._collision_msg.collision1_name is None:
                raise AttributeError("collision1_name is None")
            if self._collision_msg.collision2_name is None:
                raise AttributeError("collision2_name is None")

            self.reward = self.reward_dist * 2.0

            # Resets the state of the environment and returns an initial observation.
            # we should avoid this --> huge bottleneck
            rospy.wait_for_service('/gazebo/reset_simulation')
            try:
                self.reset_proxy()

                pose = Pose()
                pose.position.x = self.realgoal[0];
                pose.position.y = self.realgoal[1];
                pose.position.z = self.realgoal[2];
                pose.orientation.x = 0;
                pose.orientation.y= 0;
                pose.orientation.z = 0;
                pose.orientation.w = 0;
                self._pub_link_state.publish( LinkState(link_name="target_link", pose=pose, reference_frame="world") )

            except (rospy.ServiceException) as e:
                print ("/gazebo/reset_simulation service call failed")

        else:
            # here we want to fetch the positions of the end-effector which are nr_dof:nr_dof+3
            # here is the distance block
            if abs(self.reward_dist) < 0.005:
                self.reward = 1 + self.reward_dist # Make the reward increase as the distance decreases
                print("Reward dist is: ", self.reward)
            else:
                self.reward = self.reward_dist

        done = bool( (abs(self.reward_dist) < 0.005) or (self.iterator > self.max_episode_steps) )

        # Return the corresponding observations, rewards, etc.
        # TODO, understand better what's the last object to return
        self._collision_msg = None
        return self.ob, self.reward, done, {}

    def reset(self):
        """
        Reset the agent for a particular experiment condition.
        """
        self.iterator = 0

        if self.reset_jnts is True:
            self._pub.publish(self.get_trajectory_message(self.environment['reset_conditions']['initial_positions']))

            if (self.slowness_unit == 'sec') or (self.slowness_unit is None):
                time.sleep(int(self.slowness))
            elif(self.slowness_unit == 'nsec'):
                time.sleep(int(self.slowness/1000000000)) # using nanoseconds
            else:
                print("Unrecognized unit. Please use sec or nsec.")

        # Take an observation
        self.ob = self.take_observation()
        while(self.ob is None):
            self.ob = self.take_observation()

        # Return the corresponding observation
        return self.ob
