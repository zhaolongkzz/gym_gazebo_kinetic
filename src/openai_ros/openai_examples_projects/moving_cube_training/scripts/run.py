#!/usr/bin/env python
import rospy
import time
# Inspired by https://keon.io/deep-q-learning/
import random
import gym
import math
import numpy as np
from collections import deque
from keras.models import Sequential
from keras.layers import Dense
from keras.optimizers import Adam
from keras.models import model_from_yaml

import rospkg
import os

# import our training environment
from openai_ros.task_envs.moving_cube import one_disk_walk

class DQNRobotSolver():
    def __init__(self, environment_name, n_observations, n_actions, n_win_ticks=195, min_episodes= 100, max_env_steps=None, gamma=1.0, epsilon=1.0, epsilon_min=0.01, epsilon_log_decay=0.995, alpha=0.01, alpha_decay=0.01, batch_size=64, monitor=False, quiet=False):
        self.memory = deque(maxlen=100000)
        self.env = gym.make(environment_name)
        #if monitor: self.env = gym.wrappers.Monitor(self.env, '../data/turtlebot2-1', force=True)
        
        self.input_dim = n_observations
        self.n_actions = n_actions
        self.gamma = gamma
        self.epsilon = epsilon
        self.epsilon_min = epsilon_min
        self.epsilon_decay = epsilon_log_decay
        self.alpha = alpha
        self.alpha_decay = alpha_decay
        self.n_win_ticks = n_win_ticks
        self.min_episodes = min_episodes
        self.batch_size = batch_size
        self.quiet = quiet
        if max_env_steps is not None: self.env._max_episode_steps = max_env_steps

        # Init model
        self.model = Sequential()
        
        self.model.add(Dense(24, input_dim=self.input_dim, activation='tanh'))
        self.model.add(Dense(48, activation='tanh'))
        self.model.add(Dense(self.n_actions, activation='linear'))
        self.model.compile(loss='mse', optimizer=Adam(lr=self.alpha, decay=self.alpha_decay))
    

    def remember(self, state, action, reward, next_state, done):
        self.memory.append((state, action, reward, next_state, done))

    def choose_action(self, state, epsilon, do_train, iteration=0):
        
        if do_train and (np.random.random() <= epsilon):
            # We return a random sample form the available action space
            print(">>>>>Chosen Random ACTION")
            action_chosen = self.env.action_space.sample()
             
        else:
            # We return the best known prediction based on the state
            action_chosen = np.argmax(self.model.predict(state))
        
        if do_train:
            print("LEARNING A="+str(action_chosen)+",E="+str(round(epsilon, 3))+",I="+str(iteration))
        else:
            print("RUNNING A="+str(action_chosen)+",E="+str(round(epsilon, 3))+",I="+str(iteration))
        
        return action_chosen
        

    def get_epsilon(self, t):
        new_epsilon = max(self.epsilon_min, min(self.epsilon, 1.0 - math.log10((t + 1) * self.epsilon_decay)))
        new_epsilon = self.epsilon
        return new_epsilon

    def preprocess_state(self, state):
        return np.reshape(state, [1, self.input_dim])

    def replay(self, batch_size):
        x_batch, y_batch = [], []
        minibatch = random.sample(
            self.memory, min(len(self.memory), batch_size))
        for state, action, reward, next_state, done in minibatch:
            y_target = self.model.predict(state)
            y_target[0][action] = reward if done else reward + self.gamma * np.max(self.model.predict(next_state)[0])
            x_batch.append(state[0])
            y_batch.append(y_target[0])
        
        self.model.fit(np.array(x_batch), np.array(y_batch), batch_size=len(x_batch), verbose=0)
        if self.epsilon > self.epsilon_min:
            self.epsilon *= self.epsilon_decay
            
    def run(self, num_episodes, do_train=False):
        
        rate = rospy.Rate(30)
        
        #scores = deque(maxlen=100)

        for e in range(num_episodes):
            
            init_state = self.env.reset()
            
            state = self.preprocess_state(init_state)
            done = False
            i = 0
            while not done:
                # openai_ros doesnt support render for the moment
                #self.env.render()
                action = self.choose_action(state, self.get_epsilon(e), do_train, i)
                next_state, reward, done, _ = self.env.step(action)
                next_state = self.preprocess_state(next_state)
                
                if do_train:
                    # If we are training we want to remember what I did and process it.
                    self.remember(state, action, reward, next_state, done)
                
                state = next_state
                i += 1
                

           # scores.append(i)
           # mean_score = np.mean(scores)
           # if mean_score >= self.n_win_ticks and e >= min_episodes:
           #     if not self.quiet: print('Ran {} episodes. Solved after {} trials'.format(e, e - min_episodes))
           #     return e - min_episodes
           # if e % 1 == 0 and not self.quiet:
           #     print('[Episode {}] - Mean survival time over last {} episodes was {} ticks.'.format(e, min_episodes ,mean_score))
            print('Episode: {}'.format(e))
            if do_train:
                self.replay(self.batch_size)
            

        #if not self.quiet: print('Did not solve after {} episodes'.format(e))
        return e
        
    def save(self, model_name, models_dir_path="/tmp"):
        """
        We save the current model
        """
        
        model_name_yaml_format = model_name+".yaml"
        model_name_HDF5_format = model_name+".h5"
        
        model_name_yaml_format_path = os.path.join(models_dir_path,model_name_yaml_format)
        model_name_HDF5_format_path = os.path.join(models_dir_path,model_name_HDF5_format)
        
        # serialize model to YAML
        model_yaml = self.model.to_yaml()
        
        with open(model_name_yaml_format_path, "w") as yaml_file:
            yaml_file.write(model_yaml)
        # serialize weights to HDF5: http://www.h5py.org/
        self.model.save_weights(model_name_HDF5_format_path)
        print("Saved model to disk")
        
    def load(self, model_name, models_dir_path="/tmp"):
        """
        Loads a previously saved model
        """
        
        model_name_yaml_format = model_name+".yaml"
        model_name_HDF5_format = model_name+".h5"
        
        model_name_yaml_format_path = os.path.join(models_dir_path,model_name_yaml_format)
        model_name_HDF5_format_path = os.path.join(models_dir_path,model_name_HDF5_format)
        
        # load yaml and create model
        yaml_file = open(model_name_yaml_format_path, 'r')
        loaded_model_yaml = yaml_file.read()
        yaml_file.close()
        self.model = model_from_yaml(loaded_model_yaml)
        # load weights into new model
        self.model.load_weights(model_name_HDF5_format_path)
        print("Loaded model from disk")
        
if __name__ == '__main__':
    rospy.init_node('cube_nav_deep_qlearn', anonymous=True, log_level=rospy.FATAL)
    env = gym.make('MovingCubeOneDiskWalk-v0')
    rospackage_name = "moving_cube_training"
    model_name = "cube_"
    
    environment_name = 'MovingCubeOneDiskWalk-v0'
    
    n_observations = rospy.get_param('/moving_cube/n_observations')
    n_actions = rospy.get_param('/moving_cube/n_actions')
    
    n_episodes_training = rospy.get_param('/moving_cube/episodes_training')
    n_episodes_running = rospy.get_param('/moving_cube/episodes_running')
    n_win_ticks = rospy.get_param('/moving_cube/n_win_ticks')
    min_episodes = rospy.get_param('/moving_cube/min_episodes')
    max_env_steps = None
    gamma =  rospy.get_param('/moving_cube/gamma')
    epsilon = rospy.get_param('/moving_cube/epsilon')
    epsilon_min = rospy.get_param('/moving_cube/epsilon_min')
    epsilon_log_decay = rospy.get_param('/moving_cube/epsilon_decay')
    alpha = rospy.get_param('/moving_cube/alpha')
    alpha_decay = rospy.get_param('/moving_cube/alpha_decay')
    batch_size = rospy.get_param('/moving_cube/batch_size')
    monitor = rospy.get_param('/moving_cube/monitor')
    quiet = rospy.get_param('/moving_cube/quiet')
    
    
    agent = DQNRobotSolver(     environment_name,
                                n_observations,
                                n_actions,
                                n_win_ticks,
                                min_episodes,
                                max_env_steps,
                                gamma,
                                epsilon,
                                epsilon_min,
                                epsilon_log_decay,
                                alpha,
                                alpha_decay,
                                batch_size,
                                monitor,
                                quiet)
    #agent.run(num_episodes=n_episodes_training, do_train=True)
    
    
    rospack = rospkg.RosPack()
    pkg_path = rospack.get_path(rospackage_name)
    outdir = pkg_path + '/models.1'
    if not os.path.exists(outdir):
        os.makedirs(outdir)
        rospy.logfatal("Created folder="+str(outdir))
    
    #agent.save(model_name, outdir)
    agent.load(model_name, outdir)
    
    agent.run(num_episodes=n_episodes_running, do_train=False)