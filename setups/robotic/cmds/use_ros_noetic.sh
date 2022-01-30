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


#turtlebot2 yujin kobuki (please make sure too tho)
alias install_turtlebot2="
    source $CMDS_DIR/ros_noetic_install_turtlebot2/cmd.sh
"


