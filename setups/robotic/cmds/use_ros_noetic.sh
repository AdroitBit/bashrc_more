source /opt/ros/noetic/setup.bash
alias ros_create_pkg='catkin_create_pkg \$1 std_msgs roscpp rospy'
alias ros_build_ws='catkin_make'
alias ros_create_ws='$CMDS_DIR/ros_create_ws.sh'
#source ~/additional_noetic_pkg/devel/setup.bash
#source ~/ros_noetic_ws/*/devel/setup.bash