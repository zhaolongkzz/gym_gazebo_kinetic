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

echo_and_run cd "/home/zzl/gym_ws/src/openai_ros/openai_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zzl/gym_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zzl/gym_ws/install/lib/python2.7/dist-packages:/home/zzl/gym_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zzl/gym_ws/build" \
    "/usr/bin/python" \
    "/home/zzl/gym_ws/src/openai_ros/openai_ros/setup.py" \
    build --build-base "/home/zzl/gym_ws/build/openai_ros/openai_ros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/zzl/gym_ws/install" --install-scripts="/home/zzl/gym_ws/install/bin"
