#! /usr/bin/env python
import rospy
import time
import tf
from nav_msgs.msg import Odometry



class ModelOdomSubs(object):
    def __init__(self, robot_model_name, rate_hz=50.0):

        self.odom_topic_name = "/"+str(robot_model_name)+"/odom"
        self._check_odom_ready()
        rospy.Subscriber(self.odom_topic_name, Odometry, self.odom_callback)

    def _check_odom_ready(self):
        self.odom = None
        rospy.logdebug("Waiting for "+str(self.odom_topic_name)+" to be READY...")
        while self.odom is None and not rospy.is_shutdown():
            try:
                self.odom = rospy.wait_for_message(self.odom_topic_name, Odometry, timeout=1.0)
                rospy.logdebug("Current "+str(self.odom_topic_name)+" READY=>")

            except:
                rospy.logerr("Current "+str(self.odom_topic_name)+" not ready yet, retrying for getting odom")
        return self.odom
        
    
    def odom_callback(self, data):
        self.odom = data
        
    def get_odom(self):
        return self.odom
        
    def get_pose(self):
        rospy.logdebug("Getting Pose")
        current_pose = self.odom.pose.pose
        rospy.logdebug("DONE Getting Pose")
        return current_pose

def handle_block_pose(pose_msg, robot_name):
    br = tf.TransformBroadcaster()
    
    br.sendTransform((pose_msg.position.x,pose_msg.position.y,pose_msg.position.z),
                     (pose_msg.orientation.x,pose_msg.orientation.y,pose_msg.orientation.z,pose_msg.orientation.w),
                     rospy.Time.now(),
                     robot_name,
                     "/world")
    rospy.logdebug("Done Publishing Block TF to world frame")

def publisher_of_tf():
    
    rospy.init_node('block_tf_pubish_node', anonymous=True)
    robot_name = "bowl_2"
    block_odom_object = ModelOdomSubs(robot_name)


    rate = rospy.Rate(50)
    while not rospy.is_shutdown():
        pose_now = block_odom_object.get_pose()
        if not pose_now:
            rospy.logerr("The Pose is not yet"+str(robot_name)+" available...Please try again later")
        else:
            handle_block_pose(pose_now, robot_name)
        rate.sleep()
    

if __name__ == '__main__':
    try:
        publisher_of_tf()
    except rospy.ROSInterruptException:
        pass