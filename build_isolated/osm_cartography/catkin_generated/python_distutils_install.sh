#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/sahil/catkin_ws/src/open_street_map/osm_cartography"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/sahil/catkin_ws/install_isolated/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/sahil/catkin_ws/install_isolated/lib/python2.7/dist-packages:/home/sahil/catkin_ws/build_isolated/osm_cartography/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/sahil/catkin_ws/build_isolated/osm_cartography" \
    "/usr/bin/python" \
    "/home/sahil/catkin_ws/src/open_street_map/osm_cartography/setup.py" \
    build --build-base "/home/sahil/catkin_ws/build_isolated/osm_cartography" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/sahil/catkin_ws/install_isolated" --install-scripts="/home/sahil/catkin_ws/install_isolated/bin"