# Install script for directory: /home/sahil/catkin_ws/src/librealsense/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sahil/catkin_ws/devel_isolated/librealsense2")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/hello-realsense/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/software-device/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/capture/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/callback/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/save-to-disk/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/multicam/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/pointcloud/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/align/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/align-advanced/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/sensor-control/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/measure/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/C/depth/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/C/color/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/C/distance/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/post-processing/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/record-playback/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/motion/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/gl/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/pose/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/pose-predict/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/pose-and-image/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/trajectory/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/ar-basic/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/ar-advanced/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/pose-apriltag/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/examples/tracking-and-depth/cmake_install.cmake")

endif()

