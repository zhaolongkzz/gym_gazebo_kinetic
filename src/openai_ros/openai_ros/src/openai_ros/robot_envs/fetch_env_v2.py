import numpy
import rospy
#from my_fetch_train import robot_gazebo_env_goal
from openai_ros import robot_gazebo_env_goal
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
from nav_msgs.msg import Odometry
from fetch_train.srv import EePose, EePoseRequest, EeRpy, EeRpyRequest, EeTraj, EeTrajRequest, JointTraj, JointTrajRequest


class FetchEnv(robot_gazebo_env_goal.RobotGazeboEnv):
    """Superclass for all Fetch environments.
    """

    def __init__(self):
        print ("Entered Fetch Env")
        """Initializes a new Fetch environment.

        Args:
            
        """


        """
        To check any topic we need to have the simulations running, we need to do two things:
        1) Unpause the simulation: without that the stream of data doesn't flow. This is for simulations
        that are paused for whatever reason
        2) If the simulation was running already for some reason, we need to reset the controllers.
        This has to do with the fact that some plugins with tf don't understand the reset of the simulation
        and need to be reset to work properly.
        """

        # We Start all the ROS related Subscribers and publishers
        
        JOINT_STATES_SUBSCRIBER = '/joint_states'
        
        self.joint_states_sub = rospy.Subscriber(JOINT_STATES_SUBSCRIBER, JointState, self.joints_callback)
        self.joints = JointState()
        
        self.ee_traj_client = rospy.ServiceProxy('/ee_traj_srv', EeTraj)
        self.joint_traj_client = rospy.ServiceProxy('/joint_traj_srv', JointTraj)
        self.ee_pose_client = rospy.ServiceProxy('/ee_pose_srv', EePose)
        self.ee_rpy_client = rospy.ServiceProxy('/ee_rpy_srv', EeRpy)
        
        # Variables that we give through the constructor.

        self.controllers_list = []

        self.robot_name_space = ""
        
        # We launch the init function of the Parent Class robot_gazebo_env_goal.RobotGazeboEnv
        super(FetchEnv, self).__init__(controllers_list=self.controllers_list,
                                                robot_name_space=self.robot_name_space,
                                                reset_controls=False)



    # RobotGazeboEnv virtual methods
    # ----------------------------

    def _check_all_systems_ready(self):
        """
        Checks that all the sensors, publishers and other simulation systems are
        operational.
        """
        self._check_all_sensors_ready()
        return True


    # FetchEnv virtual methods
    # ----------------------------

    def _check_all_sensors_ready(self):
        self._check_joint_states_ready()
        
        rospy.logdebug("ALL SENSORS READY")

    def _check_joint_states_ready(self):
        self.joints = None
        while self.joints is None and not rospy.is_shutdown():
            try:
                self.joints = rospy.wait_for_message("/joint_states", JointState, timeout=1.0)
                rospy.logdebug("Current /joint_states READY=>" + str(self.joints))

            except:
                rospy.logerr("Current /joint_states not ready yet, retrying for getting joint_states")
        return self.joints
    
    def joints_callback(self, data):
        self.joints = data

    def get_joints(self):
        return self.joints

    def set_trajectory_ee(self, action):
        """
        Helper function.
        Wraps an action vector of joint angles into a JointTrajectory message.
        The velocities, accelerations, and effort do not control the arm motion
        """
        # Set up a trajectory message to publish.
        
        ee_target = EeTrajRequest()
        ee_target.pose.orientation.w = 1.0
        ee_target.pose.position.x = action[0]
        ee_target.pose.position.y = action[1]
        ee_target.pose.position.z = action[2]
        result = self.ee_traj_client(ee_target)
        
        return True
        
    def set_trajectory_joints(self, initial_qpos):
        """
        Helper function.
        Wraps an action vector of joint angles into a JointTrajectory message.
        The velocities, accelerations, and effort do not control the arm motion
        """
        # Set up a trajectory message to publish.
        
        joint_point = JointTrajRequest()
        
        joint_point.point.positions = [None] * 7
        joint_point.point.positions[0] = initial_qpos["joint0"]
        joint_point.point.positions[1] = initial_qpos["joint1"]
        joint_point.point.positions[2] = initial_qpos["joint2"]
        joint_point.point.positions[3] = initial_qpos["joint3"]
        joint_point.point.positions[4] = initial_qpos["joint4"]
        joint_point.point.positions[5] = initial_qpos["joint5"]
        joint_point.point.positions[6] = initial_qpos["joint6"]
        
        result = self.joint_traj_client(joint_point)
        
        return True
        
    def get_ee_pose(self):
        
        gripper_pose_req = EePoseRequest()
        gripper_pose = self.ee_pose_client(gripper_pose_req)
        
        return gripper_pose
        
    def get_ee_rpy(self):
        
        gripper_rpy_req = EeRpyRequest()
        gripper_rpy = self.ee_rpy_client(gripper_rpy_req)
        
        return gripper_rpy
    
    # ParticularEnv methods
    # ----------------------------

    def _init_env_variables(self):
        """Inits variables needed to be initialised each time we reset at the start
        of an episode.
        """
        raise NotImplementedError()

    def _compute_reward(self, observations, done):
        """Calculates the reward to give based on the observations given.
        """
        raise NotImplementedError()

    def _set_action(self, action):
        """Applies the given action to the simulation.
        """
        raise NotImplementedError()

    def _get_obs(self):
        raise NotImplementedError()

    def _is_done(self, observations):
        """Checks if episode done based on observations given.
        """
        raise NotImplementedError()
