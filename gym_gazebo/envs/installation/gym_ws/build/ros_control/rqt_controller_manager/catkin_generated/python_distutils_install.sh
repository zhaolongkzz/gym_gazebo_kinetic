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

echo_and_run cd "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install/lib/python2.7/dist-packages:/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build" \
    "/usr/bin/python" \
    "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/src/ros_control/rqt_controller_manager/setup.py" \
    build --build-base "/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/build/ros_control/rqt_controller_manager" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install" --install-scripts="/home/zzl/tools/gym-gazebo/gym_gazebo/envs/installation/gym_ws/install/bin"
