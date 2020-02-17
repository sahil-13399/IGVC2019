# -*- coding: utf-8 -*-
from __future__ import print_function
import argparse
import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/kinetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/kinetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in "/home/sahil/catkin_ws/devel_isolated/route_network;/home/sahil/catkin_ws/devel_isolated/rosserial_xbee;/home/sahil/catkin_ws/devel_isolated/rosserial_windows;/home/sahil/catkin_ws/devel_isolated/rosserial_vex_v5;/home/sahil/catkin_ws/devel_isolated/rosserial_vex_cortex;/home/sahil/catkin_ws/devel_isolated/rosserial_tivac;/home/sahil/catkin_ws/devel_isolated/rosserial_test;/home/sahil/catkin_ws/devel_isolated/rosserial_server;/home/sahil/catkin_ws/devel_isolated/rosserial_python;/home/sahil/catkin_ws/devel_isolated/rosserial_embeddedlinux;/home/sahil/catkin_ws/devel_isolated/rosserial_client;/home/sahil/catkin_ws/devel_isolated/rosserial_msgs;/home/sahil/catkin_ws/devel_isolated/rosserial_mbed;/home/sahil/catkin_ws/devel_isolated/rosserial_arduino;/home/sahil/catkin_ws/devel_isolated/rosserial;/home/sahil/catkin_ws/devel_isolated/ros_essentials_cpp;/home/sahil/catkin_ws/devel_isolated/realsense2_description;/home/sahil/catkin_ws/devel_isolated/realsense2_camera;/home/sahil/catkin_ws/devel_isolated/r2d2;/home/sahil/catkin_ws/devel_isolated/point_cloud;/home/sahil/catkin_ws/devel_isolated/osm_cartography;/home/sahil/catkin_ws/devel_isolated/img_to_laser;/home/sahil/catkin_ws/devel_isolated/differential_drive;/home/sahil/catkin_ws/devel_isolated/ddynamic_reconfigure;/home/sahil/catkin_ws/devel_isolated/chefbot_gazebo;/home/sahil/catkin_ws/devel_isolated/chefbot_description;/home/sahil/catkin_ws/devel_isolated/chefbot_bringup;/home/sahil/catkin_ws/devel_isolated/autoz;/home/sahil/catkin_ws/devel;/opt/ros/kinetic".split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/sahil/catkin_ws/devel_isolated/rplidar_ros/env.sh')

output_filename = '/home/sahil/catkin_ws/build_isolated/rplidar_ros/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    #print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
