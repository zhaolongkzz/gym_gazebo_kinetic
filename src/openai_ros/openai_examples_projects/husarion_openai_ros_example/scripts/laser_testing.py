#!/usr/bin/env python
import rospy
from sensor_msgs.msg import LaserScan
from std_msgs.msg import Header

class LaserFilter(object):
    
    def __init__(self):
        
        self.index = 0
        self._check_laser_scan_ready()
        rospy.Subscriber("/rosbot/laser/scan", LaserScan, self._laser_scan_callback)
        
        self.laser_filtered_pub = rospy.Publisher('/rosbot/laser/scan_filtered', LaserScan, queue_size=1)
        
        
    def _check_laser_scan_ready(self):
        self.laser_scan = None
        rospy.logdebug("Waiting for /rosbot/laser/scan to be READY...")
        while self.laser_scan is None and not rospy.is_shutdown():
            try:
                self.laser_scan = rospy.wait_for_message("/rosbot/laser/scan", LaserScan, timeout=1.0)
                rospy.logdebug("Current /rosbot/laser/scan READY=>")

            except:
                rospy.logerr("Current /rosbot/laser/scan not ready yet, retrying for getting laser_scan")
        return self.laser_scan
        
    def _laser_scan_callback(self, data):
        self.laser_scan = data
        
        
    def publish_filtered_laser_scan(self):
        
        length_range = len(self.laser_scan.ranges)
        length_intensities = len(self.laser_scan.intensities)
        
        #index = int(length_range / 2)
        #self.index = 10
        self.index += 1
        if self.index >= length_range - 1:
            self.index = 0
        
        print str(self.index)
        wanted_value = self.laser_scan.ranges[self.index]
        #wanted_value = 1.0
        
        
        laser_filtered_object = LaserScan()

        h = Header()
        h.stamp = rospy.Time.now() # Note you need to call rospy.init_node() before this will work
        h.frame_id = "chassis"
        
        laser_filtered_object.header = h
        laser_filtered_object.angle_min = self.laser_scan.angle_min
        laser_filtered_object.angle_max = self.laser_scan.angle_max
        laser_filtered_object.angle_increment = self.laser_scan.angle_increment
        laser_filtered_object.time_increment = self.laser_scan.time_increment
        laser_filtered_object.scan_time = self.laser_scan.scan_time
        laser_filtered_object.range_min = self.laser_scan.range_min
        laser_filtered_object.range_max = self.laser_scan.range_max
        laser_filtered_object.ranges = [self.laser_scan.range_min]*length_range
        
        """
        laser_filtered_object.ranges = []
        for item in self.laser_scan.ranges:
            laser_filtered_object.ranges.append(item)
        """
        
        laser_filtered_object.intensities = [100.0]*length_intensities
        
        laser_filtered_object.ranges[self.index] = wanted_value
        
        self.laser_filtered_pub.publish(laser_filtered_object)
        

if __name__ == '__main__':
    rospy.init_node('laser_filter_node', anonymous=True)
    lf = LaserFilter()
    
    rate = rospy.Rate(100) # 10hz
    while not rospy.is_shutdown():
        lf.publish_filtered_laser_scan()
        rate.sleep()