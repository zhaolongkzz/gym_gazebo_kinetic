#! /usr/bin/env python
import rospy
from nav_msgs.msg import Odometry
from std_msgs.msg import Header
from gazebo_msgs.srv import GetModelState, GetModelStateRequest


class GazeboModelOdom(object):
    def __init__(self, robot_model_name, rate_hz=50.0):

        odom_topic_name = "/"+str(robot_model_name)+"/odom"
        self.odom_pub = rospy.Publisher(odom_topic_name, Odometry)

        rospy.loginfo("GazeboModelOdom is Waiting for service.../gazebo/get_model_state")
        rospy.wait_for_service('/gazebo/get_model_state')
        rospy.loginfo("DONE GazeboModelOdom is Waiting for service.../gazebo/get_model_state")
        self.get_model_srv = rospy.ServiceProxy('/gazebo/get_model_state', GetModelState)

        self.odom = Odometry()
        header = Header()
        header.stamp = rospy.Time.now()
        header.frame_id = 'world'
        self.odom.header = header

        self.model = GetModelStateRequest()
        self.model.model_name = robot_model_name

        # Reset Value to True to reset counter when Time moves backwards ( reset sim )
        # http://docs.ros.org/api/rospy/html/rospy.timer.Rate-class.html#sleep
        self.rate_object = rospy.Rate(hz=rate_hz, reset=True)

    def get_odometry_loop(self):

        while not rospy.is_shutdown():
            result = self.get_model_srv(self.model)

            self.odom.pose.pose = result.pose
            self.odom.twist.twist = result.twist

            header = Header()
            header.stamp = rospy.Time.now()
            self.odom.header = header

            self.odom_pub.publish(self.odom)

            self.rate_object.sleep()

if __name__ == "__main__":
    rospy.init_node('redbowl_odom_pubish_node')
    robot_model_name = "bowl_2"
    rate_hz = 50.0
    gazebo_model_odom_obj = GazeboModelOdom(robot_model_name, rate_hz)
    gazebo_model_odom_obj.get_odometry_loop()
