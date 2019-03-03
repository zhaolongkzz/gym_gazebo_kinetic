#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from random import randint
from math import sin

class PID(object):

    def __init__(self):
    
        self._setpoint_pub = rospy.Publisher("/setpoint",Float64,queue_size=1)
        self._state_pub = rospy.Publisher("/state",Float64,queue_size=1)
        self._control_effort_sub = rospy.Subscriber('/control_effort', Float64, self.control_effort_callback)
        self._control_effort_value = Float64()

    def control_effort_callback(self,data):
        self._control_effort_value.data = data.data
        
        
    def setpoint_update(self, value):
        value_object = Float64()
        value_object.data = value
        self._setpoint_pub.publish(value_object)
    
    def state_update(self, value):
        value_object = Float64()
        value_object.data = value
        self._state_pub.publish(value_object)
    
    def get_control_effort(self):
        return self._control_effort_value.data
        
        

def sinus_test():
    rospy.init_node('sinus_pid_node', anonymous=True)
    
    
    pid_object = PID()
    
    
    rate = rospy.Rate(10.0)
    ctrl_c = False
    def shutdownhook():
        rospy.loginfo("shutdown time!")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    setPoint_value = 0.0
    pid_object.setpoint_update(value=setPoint_value)
    
    i = 0
    
    
    while not ctrl_c:
        state_value = sin(i)
        pid_object.state_update(value=state_value)
        effort_value = pid_object.get_control_effort()
        #print ("state_value ==>"+str(state_value))
        #print ("effort_value ==>"+str(effort_value))
        rate.sleep()
        i += 0.1

def step_test():
    rospy.init_node('step_pid_node', anonymous=True)
    
    
    pid_object = PID()
    
    
    rate = rospy.Rate(10.0)
    ctrl_c = False
    def shutdownhook():
        rospy.loginfo("shutdown time!")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    setPoint_value = 0.0
    pid_object.setpoint_update(value=setPoint_value)
    
    i = 0
    state_value = 1.0
    
    while not ctrl_c:
        
        pid_object.state_update(value=state_value)
        effort_value = pid_object.get_control_effort()
        #print ("state_value ==>"+str(state_value))
        #print ("effort_value ==>"+str(effort_value))
        rate.sleep()
        i += 1
        if i > 30:
            state_value *= -1
            i = 0
    
    
if __name__ == '__main__':
    step_test()