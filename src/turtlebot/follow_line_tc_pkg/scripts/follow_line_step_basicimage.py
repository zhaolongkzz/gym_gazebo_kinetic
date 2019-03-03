#!/usr/bin/env python
import rospy
import cv2
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image


class LineFollower(object):

    def __init__(self):
    
        self.bridge_object = CvBridge()
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        self.cmd_vel_subs = rospy.Subscriber('/cmd_vel', Twist, self.cmdvel_callback)
        self.last_cmdvel_command = Twist()
        self._cmdvel_pub_rate = rospy.Rate(10)
        self.image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,self.camera_callback)


    def cmdvel_callback(self,msg):
        self.last_cmdvel_command = msg
    
    def compare_twist_commands(self,twist1,twist2):
        LX = twist1.linear.x == twist2.linear.x
        LY = twist1.linear.y == twist2.linear.y
        LZ = twist1.linear.z == twist2.linear.z
        AX = twist1.angular.x == twist2.angular.x
        AY = twist1.angular.y == twist2.angular.y
        AZ = twist1.angular.z == twist2.angular.z
        equal = LX and LY and LZ and AX and AY and AZ
        if not equal:
            rospy.logwarn("The Current Twist is not the same as the one sent, Resending")
        return equal

    def camera_callback(self,data):
        
        try:
            # We select bgr8 because its the OpneCV encoding by default
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            print(e)
        
        cv2.imshow("Image window", cv_image)
        cv2.waitKey(1)
        
        
    
    def move_robot(self, twist_object):
        # We make this to avoid Topic loss, specially at the start
        current_equal_to_new = False
        while (not (current_equal_to_new) ):
            self.cmd_vel_pub.publish(twist_object)
            self._cmdvel_pub_rate.sleep()
            current_equal_to_new = self.compare_twist_commands(twist1=self.last_cmdvel_command,
                                    twist2=twist_object)
                                    
    def clean_class(self):
        # Stop Robot
        twist_object = Twist()
        twist_object.angular.z = 0.0
        self.move_robot(twist_object)

def main():
    rospy.init_node('line_following_node', anonymous=True)
    
    
    line_follower_object = LineFollower()
    twist_object = Twist()
    # Make it start turning
    twist_object.angular.z = 0.5
    
    
    rate = rospy.Rate(5)
    
    ctrl_c = False
    def shutdownhook():
        # works better than the rospy.is_shut_down()
        line_follower_object.clean_class()
        cv2.destroyAllWindows()
        rospy.loginfo("shutdown time!")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    
    while not ctrl_c:
        line_follower_object.move_robot(twist_object)
        rate.sleep()

    
if __name__ == '__main__':
    main()