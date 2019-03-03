#!/usr/bin/env python
import sys
import rospy
import math
import tf
import geometry_msgs.msg

if __name__ == '__main__':
    rospy.init_node('tf_listener_sawyer_tcp')

    listener = tf.TransformListener()

    if len(sys.argv) < 3:
        print("usage: rosrun my_sawyer_openai_example tf_listener_sawyer_tcp.py world right_electric_gripper_base")
    else:
        start_frame_name = sys.argv[1]
        end_frame_name = sys.argv[2]
        
        rate = rospy.Rate(10.0)
        ctrl_c = False
        
        start_frame = "/"+start_frame_name
        end_frame = "/"+end_frame_name
        
        def shutdownhook():
            # works better than the rospy.is_shut_down()
            global ctrl_c
            print "shutdown time! Stop script"
            ctrl_c = True

        rospy.on_shutdown(shutdownhook)
        
        while not ctrl_c:
            try:
                (trans,rot) = listener.lookupTransform(start_frame, end_frame, rospy.Time(0))
            except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
                continue
    
            #rospy.loginfo("###################")
            rospy.loginfo(str(trans))
            #rospy.loginfo(str(rot))
            #rospy.loginfo("####### END #######")
    
            rate.sleep()