execute_process(COMMAND "/home/sahil/catkin_ws/build/open_street_map/osm_cartography/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/sahil/catkin_ws/build/open_street_map/osm_cartography/catkin_generated/python_distutils_install.sh) returned error code ")
endif()