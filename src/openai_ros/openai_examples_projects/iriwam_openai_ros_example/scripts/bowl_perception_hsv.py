#!/usr/bin/env python
import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image

class LineFollower(object):

    def __init__(self):
    
        self.bridge_object = CvBridge()
        self.image_sub = rospy.Subscriber("/camera/rgb/image_raw",Image,self.camera_callback)

    def camera_callback(self,data):
        
        try:
            # We select bgr8 because its the OpneCV encoding by default
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            print(e)
            
        # We get image dimensions and crop the parts of the image we don't need
        # Bear in mind that because the first value of the image matrix is start and second value is down limit.
        # Select the limits so that it gets the line not too close and not too far, and the minimum portion possible
        # To make process faster.
        height, width, channels = cv_image.shape
        descentre = -height/2
        rows_to_watch = height
        crop_img = cv_image[(height)/2+descentre:(height)/2+(descentre+rows_to_watch)][1:width]
        
        # Convert from RGB to HSV
        hsv = cv2.cvtColor(crop_img, cv2.COLOR_BGR2HSV)
        
        
        # We track two colours, the RedBowl and the Black tip of IriWam Arm ( laser ) which is black.
        
        # RED BOWL
        
        lower_red = np.array([0,204,100])
        upper_red = np.array([0,255,255])

        # Threshold the HSV image to get only yellow colors
        mask = cv2.inRange(hsv, lower_red, upper_red)
        
        # Calculate centroid of the blob of binary image using ImageMoments
        m = cv2.moments(mask, False)
        try:
            cx_red, cy_red = m['m10']/m['m00'], m['m01']/m['m00']
        except ZeroDivisionError:
            cy_red, cx_red = height/2, width/2
        
        
        # Bitwise-AND mask and original image
        #res = cv2.bitwise_and(crop_img,crop_img, mask= mask)
        
        # Draw the centroid in the resultut image
        #cv2.circle(res,(int(cx_red), int(cy_red)), 10,(0,0,255),-1)

        
        #cv2.imshow("MASK", mask)
        #cv2.imshow("RES", res)
        
        #cv2.waitKey(1)
        
        
        
        # Black Laser
        lower_black = np.array([0,0,0])
        upper_black = np.array([0,0,10])

        # Threshold the HSV image to get only yellow colors
        mask_black = cv2.inRange(hsv, lower_black, upper_black)
        
        # Calculate centroid of the blob of binary image using ImageMoments
        m = cv2.moments(mask_black, False)
        try:
            cx_black, cy_black = m['m10']/m['m00'], m['m01']/m['m00']
        except ZeroDivisionError:
            cy_black, cx_black = height/2, width/2
        
        
        # Bitwise-AND mask and original image
        #res_black = cv2.bitwise_and(crop_img,crop_img, mask= mask_black)
        res_black = cv2.bitwise_and(crop_img,crop_img)
        
        # Draw the centroid in the resultut image
        # cv2.circle(img, center, radius, color[, thickness[, lineType[, shift]]]) 
        cv2.circle(res_black,(int(cx_red), int(cy_red)), 10,(255,0,0),-1)
        cv2.circle(res_black,(int(cx_black), int(cy_black)), 10,(0,255,0),-1)

        cv2.imshow("MASK BLACK", mask_black)
        cv2.imshow("RES BLACK", res_black)
        
        cv2.waitKey(1)
        
        
        error_x = cx_red - cx_black
        error_y = cy_red - cy_black
        error_array = np.array([error_x,error_y])
        #rospy.logwarn("["+str(error_x)+","+str(error_y)+"]") 
        magnitude = np.linalg.norm(error_array)
        rospy.logwarn("Magnitude==>"+str(magnitude))
        
        
        #cv2.imshow("Original", cv_image)
        #cv2.imshow("HSV", hsv)
        
        
    def clean_up(self):
        cv2.destroyAllWindows()
        
        

def main():
    rospy.init_node('line_following_node', anonymous=True)
    
    
    line_follower_object = LineFollower()
   
    rate = rospy.Rate(5)
    ctrl_c = False
    def shutdownhook():
        # works better than the rospy.is_shut_down()
        line_follower_object.clean_up()
        rospy.loginfo("shutdown time!")
        ctrl_c = True
    
    rospy.on_shutdown(shutdownhook)
    
    while not ctrl_c:
        rate.sleep()

    
    
if __name__ == '__main__':
    main()