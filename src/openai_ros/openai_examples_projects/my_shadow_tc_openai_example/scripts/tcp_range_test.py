#!/usr/bin/env python
from smart_grasping_sandbox.smart_grasper import SmartGrasper
from tf.transformations import quaternion_from_euler
from math import pi
import time
import signal
import sys


def signal_handler(signal, frame):
  print "Exiting program..."
  sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
sgs = SmartGrasper()


while True:
    x = float(raw_input("X Value:"))
    y = float(raw_input("Y Value:"))
    z = float(raw_input("Z Value:"))
    roll,pitch,yaw = 0.0,0.0,0.0
    sgs.move_tip(x,y,z,roll,pitch,yaw)
    tcp_pose = sgs.get_tip_pose()
    print str(tcp_pose)

