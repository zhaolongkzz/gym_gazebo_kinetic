#!/usr/bin/env python
import gym
import gym_gazebo
import time
import numpy
import random
import time
import matplotlib
import matplotlib.pyplot as plt
import qlearn
# import liveplot
from gym import wrappers
from liveplot import LivePlot 

def render():
    render_skip = 0 #Skip first X episodes.
    render_interval = 50 #Show render Every Y episodes.
    render_episodes = 10 #Show Z episodes every rendering.

    if (x%render_interval == 0) and (x != 0) and (x > render_skip):
        env.render()
    elif ((x-render_episodes)%render_interval == 0) and (x != 0) and (x > render_skip) and (render_episodes < x):
        env.render(close=True)

if __name__ == '__main__':

    env = gym.make('QuadCopter-v0')
    print "Gym Makde done"
    outdir = '/tmp/gazebo_gym_experiments'
    env = wrappers.Monitor(env, outdir, force=True)          # use this to avoid warnings
    print "Monitor Wrapper started"
    last_time_steps = numpy.ndarray(0)

    qlearn = qlearn.QLearn(actions=range(env.action_space.n),
                    alpha=0.1, gamma=0.8, epsilon=0.9)

    initial_epsilon = qlearn.epsilon

    epsilon_discount = 0.999 # 1098 eps to reach 0.1

    start_time = time.time()
    total_episodes = 3
    highest_reward = 0

    for x in range(total_episodes):
        #done = False

        cumulated_reward = 0 #Should going forward give more reward then L/R ?
        print ("Episode = "+str(x))
        observation = env.reset()
        done = False
        if qlearn.epsilon > 0.05:
            qlearn.epsilon *= epsilon_discount

        env.render()
        print "START EPISODE OBS>>>>"+str(observation)+"<<<<"
        print type(observation)
        state = ''.join(map(str, observation))
        
        max_range = 1000
        for i in range(max_range):

            # Pick an action based on the current state
            action = qlearn.chooseAction(state)
            #print ("Action Chosen"+str(action))
            # Execute the action and get feedback
            observation, reward, done, info = env.step(action)
            cumulated_reward += reward
            #print ("Reward="+str(reward))
            if highest_reward < cumulated_reward:
                highest_reward = cumulated_reward

            #print "Step "+str(i)+" OBS>>>>"+str(observation)+"<<<<"
            #print type(observation)
            nextState = ''.join(map(str, observation))

            qlearn.learn(state, action, reward, nextState)

            #env.monitor.flush(force=True)

            if not(done):
                #print "NOT done"
                state = nextState
                if i >= max_range:
                    done = True
                    break 
            else:
                print "DONE"
                last_time_steps = numpy.append(last_time_steps, [int(i + 1)])
                break 

        m, s = divmod(int(time.time() - start_time), 60)
        h, m = divmod(m, 60)
        print ("EP: "+str(x+1)+" - [alpha: "+str(round(qlearn.alpha,2))+" - gamma: "+str(round(qlearn.gamma,2))+" - epsilon: "+str(round(qlearn.epsilon,2))+"] - Reward: "+str(cumulated_reward)+"     Time: %d:%02d:%02d" % (h, m, s))

    #Github table content
    print ("\n|"+str(total_episodes)+"|"+str(qlearn.alpha)+"|"+str(qlearn.gamma)+"|"+str(initial_epsilon)+"*"+str(epsilon_discount)+"|"+str(highest_reward)+"| PICTURE |")

    l = last_time_steps.tolist()
    l.sort()

    #print("Parameters: a="+str)
    print("Overall score: {:0.2f}".format(last_time_steps.mean()))
    print("Best 100 score: {:0.2f}".format(reduce(lambda x, y: x + y, l[-100:]) / len(l[-100:])))

    #env.monitor.close()
    #env.close()
