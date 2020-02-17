#!/usr/bin/env python


import rospy
from image_sensor_publisher import ImageConverter
from road_lines import segmented
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
import cv2
import numpy as np
import math
import matplotlib.pyplot as plt
from straight_lanes import road_lines
image_converter = ImageConverter()

def callback(data):
	global x,y,pub
	frame = image_converter.convert_msg_to_image(data)
	val=road_lines(frame)
    
    frame = numpy.asarray(frame)

    msg_frame = CvBridge().cv2_to_imgmsg(frame)

    image_pub.publish(msg_frame_edges, "mono8")

    time.sleep(0.1)


	# rospy.loginfo(rospy.get_caller_id() + "{},{}".format(x,y))



def main():
	global x_min,x_max,r_min,r_max
	
    
	rospy.init_node('LaneFollower',anonymous=True)

    rospy.init_node('image_pub', anonymous=True)
    final = rospy.Publisher('final_image', Image, queue_size=10)
	
    rospy.Subscriber("/front_view", Image, callback)
	
	print("Running in LaneFollower Mode Press Z to discontue")

	W ,H= 100,100
	
	rate = rospy.Rate(rospy.get_param("~rate", 100))
	x_min = rospy.get_param("~x_min", -0.20)
	x_max = rospy.get_param("~x_max", 0.20)
	r_min = rospy.get_param("~r_min", -1.0)
	r_max = rospy.get_param("~r_max", 1.0)

	while not rospy.is_shutdown():
		# print(x,y)

		img = np.zeros((W,H))
		# print x,y
		if x!= None or y!=None:
			cv2.line(img,(W//2,H),(int(H*x)+W//2,int(H*y-H)),(255,255,255),1)
		cv2.imshow('frame',img)
		if cv2.waitKey(33) == ord('z'):
			break

		
		rate.sleep()
		
if __name__=='__main__':
	main()