#!/usr/bin/env python

import time
import rospy
from image_sensor_publisher import ImageConverter
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
import cv2
import rospkg
from cv_bridge import CvBridge, CvBridgeError
import numpy as np
import math
import matplotlib.pyplot as plt
from straight_lanes import road_lines
image_converter = ImageConverter()

def callback(data):
	global x,y,pub
	frame = image_converter.convert_msg_to_image(data)
	frame=road_lines(frame)
	#frame = np.asarray(frame)
	cv2.imshow('Segmented Frame',frame)
	
	msg_frame = CvBridge().cv2_to_imgmsg(frame,'mono8')
	
	final = rospy.Publisher('final_image', Image, queue_size=10)
	final.publish(msg_frame)	
	
	time.sleep(0.1)
	# rospy.loginfo(rospy.get_caller_id() + "{},{}".format(x,y))



def main():
	global x_min,x_max,r_min,r_max
	
	rospy.init_node('Segmentation_image',anonymous=True)

	#rospy.Subscriber("/front_view", Image, callback)
	
	print("Running in LaneFollower Mode Press Z to discontue")
	
	rate = rospy.Rate(rospy.get_param("~rate", 100))
	
	while not rospy.is_shutdown():
		rospy.Subscriber("/front_view", Image, callback)

		
if __name__=='__main__':
	main()
