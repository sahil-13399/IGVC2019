# CMake generated Testfile for 
# Source directory: /home/sahil/catkin_ws/src/open_street_map/route_network
# Build directory: /home/sahil/catkin_ws/build_isolated/route_network
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_route_network_rostest_tests_planner.test "/home/sahil/catkin_ws/build_isolated/route_network/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/sahil/catkin_ws/build_isolated/route_network/test_results/route_network/rostest-tests_planner.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/sahil/catkin_ws/src/open_street_map/route_network --package=route_network --results-filename tests_planner.xml --results-base-dir \"/home/sahil/catkin_ws/build_isolated/route_network/test_results\" /home/sahil/catkin_ws/src/open_street_map/route_network/tests/planner.test ")
add_test(_ctest_route_network_roslaunch-check_launch "/home/sahil/catkin_ws/build_isolated/route_network/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/sahil/catkin_ws/build_isolated/route_network/test_results/route_network/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/sahil/catkin_ws/build_isolated/route_network/test_results/route_network" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/sahil/catkin_ws/build_isolated/route_network/test_results/route_network/roslaunch-check_launch.xml' '/home/sahil/catkin_ws/src/open_street_map/route_network/launch' ")
subdirs(gtest)
