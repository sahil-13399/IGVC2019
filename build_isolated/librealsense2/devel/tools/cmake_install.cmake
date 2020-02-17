# Install script for directory: /home/sahil/catkin_ws/src/librealsense/tools

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
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/convert/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/enumerate-devices/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/fw-logger/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/terminal/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/recorder/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/fw-update/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/data-collect/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/realsense-viewer/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/depth-quality/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/rosbag-inspector/cmake_install.cmake")
  include("/home/sahil/catkin_ws/build_isolated/librealsense2/devel/tools/benchmark/cmake_install.cmake")

endif()

