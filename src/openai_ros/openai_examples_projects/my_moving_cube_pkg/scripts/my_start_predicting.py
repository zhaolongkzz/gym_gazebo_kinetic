#!/usr/bin/env python
import os
import rospy
import rospkg
import gym
import my_one_disk_walk
from baselines import deepq


def main():
    rospy.init_node('movingcube_onedisk_walk_gym_predict', anonymous=True, log_level=rospy.WARN)
    env = gym.make("MyMovingCubeOneDiskWalkEnv-v0")
    
    # Get Path to saved model
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path('my_moving_cube_pkg')
    models_dir_path = os.path.join(pkg_path, "models_saved")
    assert os.path.exists(models_dir_path), " NO models saved exists in path ="+str(models_dir_path)
    out_model_file_path = os.path.join(models_dir_path, "movingcube_model.pkl") 
    
    act = deepq.load(out_model_file_path)

    while True:
        obs, done = env.reset(), False
        episode_rew = 0
        while not done:
            print(str(obs))
            # TODO: Work still , gives some errors
            action = act(obs)
            print(str(action))
            #obs, rew, done, _ = env.step(action)
            #episode_rew += rew
        #print("Episode reward", episode_rew)


if __name__ == '__main__':
    main()