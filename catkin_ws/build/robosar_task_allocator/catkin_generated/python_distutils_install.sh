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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/jaskaran/catkin_ws/src/robosar_task_allocator"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/jaskaran/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/jaskaran/catkin_ws/install/lib/python3/dist-packages:/home/jaskaran/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/jaskaran/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/jaskaran/catkin_ws/src/robosar_task_allocator/setup.py" \
    egg_info --egg-base /home/jaskaran/catkin_ws/build/robosar_task_allocator \
    build --build-base "/home/jaskaran/catkin_ws/build/robosar_task_allocator" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/jaskaran/catkin_ws/install" --install-scripts="/home/jaskaran/catkin_ws/install/bin"
