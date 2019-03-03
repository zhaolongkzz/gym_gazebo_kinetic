#!/usr/bin/env python

import gym
import time
# ROS packages required
import rospy
# import our training environment
from openai_ros.sumit_xl import sumit_xl_room


if __name__ == '__main__':

    rospy.init_node('sumitxl_test_sensors', anonymous=True, log_level=rospy.WARN)

    # Create the Gym environment
    env = gym.make('SumitXlRoom-v0')
    rospy.loginfo("Gym environment done")

    env.reset()

    action = 0
    while not rospy.is_shutdown():
        raw_input("NEXT STEP TEST")
        observation, reward, done, info = env.step(action)
        rospy.logwarn(str(observation))
        time.sleep(1)
        env.reset()

    env.close()