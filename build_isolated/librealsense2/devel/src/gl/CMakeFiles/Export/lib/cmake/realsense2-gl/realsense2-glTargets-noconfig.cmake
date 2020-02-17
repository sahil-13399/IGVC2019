#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "realsense2-gl::realsense2-gl" for configuration ""
set_property(TARGET realsense2-gl::realsense2-gl APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(realsense2-gl::realsense2-gl PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NOCONFIG "realsense2::realsense2"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG ""
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/librealsense2-gl.so.2.32.1"
  IMPORTED_SONAME_NOCONFIG "librealsense2-gl.so.2.32"
  )

list(APPEND _IMPORT_CHECK_TARGETS realsense2-gl::realsense2-gl )
list(APPEND _IMPORT_CHECK_FILES_FOR_realsense2-gl::realsense2-gl "${_IMPORT_PREFIX}/lib/librealsense2-gl.so.2.32.1" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
