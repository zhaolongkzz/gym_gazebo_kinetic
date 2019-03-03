from gym import utils

import rospy
from gym import spaces
from openai_ros.robot_envs import fetch_env_v2
#from my_fetch_train import fetch_env
#import fetch_env
from gym.envs.registration import register
import numpy as np
from sensor_msgs.msg import JointState
from fetch_train.srv import EePose, EePoseRequest, EeRpy, EeRpyRequest, EeTraj, EeTrajRequest, JointTraj, JointTrajRequest


register(
        id='FetchReach-v0',
        entry_point='openai_ros:task_envs.fetch_reach.fetch_reach.FetchReachEnv',
        timestep_limit=1000,
    )


class FetchReachEnv(fetch_env_v2.FetchEnv, utils.EzPickle):
    def __init__(self):
        
        print ("Entered Reach Env")
        
        self.get_params()
        
        fetch_env_v2.FetchEnv.__init__(self)
        utils.EzPickle.__init__(self)
        
        print ("Call env setup")
        self._env_setup(initial_qpos=self.init_pos)
        
        print ("Call get_obs")
        obs = self._get_obs()
        
        self.action_space = spaces.Box(-1., 1., shape=(self.n_actions,), dtype='float32')
        self.observation_space = spaces.Dict(dict(
            desired_goal=spaces.Box(-np.inf, np.inf, shape=obs['achieved_goal'].shape, dtype='float32'),
            achieved_goal=spaces.Box(-np.inf, np.inf, shape=obs['achieved_goal'].shape, dtype='float32'),
            observation=spaces.Box(-np.inf, np.inf, shape=obs['observation'].shape, dtype='float32'),
        ))

        
    def get_params(self):
        #get configuration parameters
        """
        self.n_actions = rospy.get_param('/fetch/n_actions')
        self.has_object = rospy.get_param('/fetch/has_object')
        self.block_gripper = rospy.get_param('/fetch/block_gripper')
        self.n_substeps = rospy.get_param('/fetch/n_substeps')
        self.gripper_extra_height = rospy.get_param('/fetch/gripper_extra_height')
        self.target_in_the_air = rospy.get_param('/fetch/target_in_the_air')
        self.target_offset = rospy.get_param('/fetch/target_offset')
        self.obj_range = rospy.get_param('/fetch/obj_range')
        self.target_range = rospy.get_param('/fetch/target_range')
        self.distance_threshold = rospy.get_param('/fetch/distance_threshold')
        self.init_pos = rospy.get_param('/fetch/init_pos')
        self.reward_type = rospy.get_param('/fetch/reward_type')
        """
        self.n_actions = 4
        self.has_object = False
        self.block_gripper = True
        self.n_substeps = 20
        self.gripper_extra_height = 0.2
        self.target_in_the_air = True
        self.target_offset = 0.0
        self.obj_range = 0.15
        self.target_range = 0.15
        self.distance_threshold = 0.05
        self.reward_type = "sparse"
        self.init_pos = {
            'joint0': 0.0,
            'joint1': 0.0,
            'joint2': 0.0,
            'joint3': -1.5,
            'joint4': 0.0,
            'joint5': 1.5,
            'joint6': 0.0,
        }
        
    def _set_action(self, action):
        
        # Take action
        assert action.shape == (4,)
        action = action.copy()  # ensure that we don't change the action outside of this scope
        pos_ctrl, gripper_ctrl = action[:3], action[3]

        #pos_ctrl *= 0.05  # limit maximum change in position
        rot_ctrl = [1., 0., 1., 0.]  # fixed rotation of the end effector, expressed as a quaternion
        gripper_ctrl = np.array([gripper_ctrl, gripper_ctrl])
        assert gripper_ctrl.shape == (2,)
        if self.block_gripper:
            gripper_ctrl = np.zeros_like(gripper_ctrl)
        action = np.concatenate([pos_ctrl, rot_ctrl, gripper_ctrl])
            
            
        # Apply action to simulation.
        self.set_trajectory_ee(action)

    def _get_obs(self):
        
        grip_pos = self.get_ee_pose()
        grip_pos_array = np.array([grip_pos.pose.position.x, grip_pos.pose.position.y, grip_pos.pose.position.z])
        #dt = self.sim.nsubsteps * self.sim.model.opt.timestep #What is this??
        #grip_velp = self.sim.data.get_site_xvelp('robot0:grip') * dt
        grip_rpy = self.get_ee_rpy()
        #print grip_rpy
        grip_velp = np.array([grip_rpy.y, grip_rpy.y])
        robot_qpos, robot_qvel = self.robot_get_obs(self.joints)
        if self.has_object:
            object_pos = self.sim.data.get_site_xpos('object0')
            # rotations
            object_rot = rotations.mat2euler(self.sim.data.get_site_xmat('object0'))
            # velocities
            object_velp = self.sim.data.get_site_xvelp('object0') * dt
            object_velr = self.sim.data.get_site_xvelr('object0') * dt
            # gripper state
            object_rel_pos = object_pos - grip_pos
            object_velp -= grip_velp
        else:
            object_pos = object_rot = object_velp = object_velr = object_rel_pos = np.zeros(0)
            
        gripper_state = robot_qpos[-2:]
        gripper_vel = robot_qvel[-2:] #* dt  # change to a scalar if the gripper is made symmetric
        """
        if not self.has_object:
            achieved_goal = grip_pos_array.copy()
        else:
            achieved_goal = np.squeeze(object_pos.copy())
        """    
        achieved_goal = self._sample_achieved_goal(grip_pos_array, object_pos)
            
        obs = np.concatenate([
            grip_pos_array, object_pos.ravel(), object_rel_pos.ravel(), gripper_state, object_rot.ravel(),
            object_velp.ravel(), object_velr.ravel(), gripper_vel,
        ])

        return {
            'observation': obs.copy(),
            'achieved_goal': achieved_goal.copy(),
            'desired_goal': self.goal.copy(),
        }
        
    def _is_done(self, observations):
        
        d = self.goal_distance(observations['achieved_goal'], self.goal)
        
        return (d < self.distance_threshold).astype(np.float32)
        
    def _compute_reward(self, observations, done):

        d = self.goal_distance(observations['achieved_goal'], self.goal)
        if self.reward_type == 'sparse':
            return -(d > self.distance_threshold).astype(np.float32)
        else:
            return -d
        
    def _init_env_variables(self):
        """
        Inits variables needed to be initialized each time we reset at the start
        of an episode.
        :return:
        """
        pass
    
    def _set_init_pose(self):
        """Sets the Robot in its init pose
        """
        self.gazebo.unpauseSim()
        self.set_trajectory_joints(self.init_pos)

        return True
        
    def goal_distance(self, goal_a, goal_b):
        assert goal_a.shape == goal_b.shape
        return np.linalg.norm(goal_a - goal_b, axis=-1)
        

    def _sample_goal(self):
        if self.has_object:
            goal = self.initial_gripper_xpos[:3] + self.np_random.uniform(-self.target_range, self.target_range, size=3)
            goal += self.target_offset
            goal[2] = self.height_offset
            if self.target_in_the_air and self.np_random.uniform() < 0.5:
                goal[2] += self.np_random.uniform(0, 0.45)
        else:
            goal = self.initial_gripper_xpos[:3] + self.np_random.uniform(-0.15, 0.15, size=3)
        
        #return goal.copy()
        return goal
        
    def _sample_achieved_goal(self, grip_pos_array, object_pos):
        if not self.has_object:
            achieved_goal = grip_pos_array.copy()
        else:
            achieved_goal = np.squeeze(object_pos.copy())
        
        #return achieved_goal.copy()
        return achieved_goal
        
    def _env_setup(self, initial_qpos):
        print ("Init Pos:")
        print (initial_qpos)
        #for name, value in initial_qpos.items():
        self.gazebo.unpauseSim()
        self.set_trajectory_joints(initial_qpos)
            #self.execute_trajectory()
        #utils.reset_mocap_welds(self.sim)
        #self.sim.forward()

        # Move end effector into position.
        gripper_target = np.array([0.498, 0.005, 0.431 + self.gripper_extra_height])# + self.sim.data.get_site_xpos('robot0:grip')
        gripper_rotation = np.array([1., 0., 1., 0.])
        #self.sim.data.set_mocap_pos('robot0:mocap', gripper_target)
        #self.sim.data.set_mocap_quat('robot0:mocap', gripper_rotation)
        action = np.concatenate([gripper_target, gripper_rotation])
        self.set_trajectory_ee(action)
        #self.execute_trajectory()
        #for _ in range(10):
            #self.sim.step()
            #self.step()

        # Extract information for sampling goals.
        #self.initial_gripper_xpos = self.sim.data.get_site_xpos('robot0:grip').copy()
        gripper_pos = self.get_ee_pose()
        gripper_pose_array = np.array([gripper_pos.pose.position.x, gripper_pos.pose.position.y, gripper_pos.pose.position.z])
        self.initial_gripper_xpos = gripper_pose_array.copy()
        if self.has_object:
            self.height_offset = self.sim.data.get_site_xpos('object0')[2]
            
        self.goal = self._sample_goal()
        self._get_obs()
        
    def robot_get_obs(self, data):
        
        """
        Returns all joint positions and velocities associated with a robot.
        """
    
        if data.position is not None and data.name:
            #names = [n for n in data.name if n.startswith('robot')]
            names = [n for n in data.name]
            i = 0
            r = 0
            for name in names:
                r += 1
                
            return (
                np.array([data.position[i] for i in range(r)]),
                np.array([data.velocity[i] for i in range(r)]),
            )
        return np.zeros(0), np.zeros(0)
