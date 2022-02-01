source /opt/ros/noetic/setup.bash
alias ros_create_pkg='catkin_create_pkg \$1 std_msgs roscpp rospy'
alias ros_build_ws='catkin_make'
alias ros_create_ws='$CMDS_DIR/ros_create_ws.sh'
#source ~/additional_noetic_pkg/devel/setup.bash
#source ~/ros_noetic_ws/*/devel/setup.bash

#source ~/ros_noetic_thing/yujin_ws/devel/setup.bash
#source ~/ros_noetic_thing/kobuki_ws/devel/setup.bash
#source ~/ros_noetic_thing/turtlebot2_ws/devel/setup.bash
source ~/ros_noetic_thing/turtlebot2_yujin_kobuki_ws/devel/setup.bash

cd ~/ros_noetic_thing

export TURTLEBOT_BASE=kobuki
export TURTLEBOT_STACKS=hexagons
export TURTLEBOT_3D_SENSOR=kinect
export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0
#resource to use rplidar on turtlebot2
#https://github.com/roboticslab-fr/rplidar-turtlebot2
#https://answers.ros.org/question/283248/require-help-mapping-using-turtlebot-2-and-an-rp-lidar-a2/


#turtlebot2 yujin kobuki (please make sure too tho)
alias install_turtlebot2="
    mkdir -p turtlebot2_yujin_kobuki_ws/src &&
    cd turtlebot2_yujin_kobuki_ws &&
    source $CMDS_DIR/ros_noetic_install_turtlebot2/cmd.sh
"


