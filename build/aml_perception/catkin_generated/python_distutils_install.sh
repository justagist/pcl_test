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

echo_and_run cd "/home/saif/workspace/test_pcl/src/aml_perception"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/saif/workspace/test_pcl/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/saif/workspace/test_pcl/install/lib/python2.7/dist-packages:/home/saif/workspace/test_pcl/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/saif/workspace/test_pcl/build" \
    "/usr/bin/python" \
    "/home/saif/workspace/test_pcl/src/aml_perception/setup.py" \
    build --build-base "/home/saif/workspace/test_pcl/build/aml_perception" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/saif/workspace/test_pcl/install" --install-scripts="/home/saif/workspace/test_pcl/install/bin"
