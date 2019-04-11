#!/usr/bin/env python
import gym
import gym_gazebo
import numpy as np
import random

import Qlearning as Q
import liveplot

if __name__ == '__main__':
    env = gym.make('GazeboCircuit2TurtlebotLidar-v0')
    env = gym.wrappers



