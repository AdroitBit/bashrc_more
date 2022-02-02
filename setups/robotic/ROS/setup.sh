export ROS_DOMAIN_ID=30 #TURTLEBOT3
export GAZEBO_IP=127.0.0.1
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models


alias install_ros_foxy="source $CMDS_DIR/install_ros_foxy.sh"
alias install_ros_noetic="source $CMDS_DIR/install_ros_noetic.sh"

alias use_ros_noetic="source $CMDS_DIR/use_ros_noetic.sh"
alias use_ros_foxy="source $CMDS_DIR/use_ros_foxy.sh"