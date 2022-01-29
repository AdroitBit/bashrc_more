#relate to ros or arduino or robotic

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds
export ROS_DOMAIN_ID=30 #TURTLEBOT3
export GAZEBO_IP=127.0.0.1
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models


#alias arduino2='~/Downloads/arduino-ide_2.0.0-rc3_Linux_64bit/arduino-ide'
alias arduino='sudo ~/Downloads/arduino-1.8.19/arduino'
#some times arduino have upload problem.just use $ sudo chmod a+rw /dev/ttyACM0

alias install_ros_foxy="source $CMDS_DIR/install_ros_foxy.sh"
alias install_ros_noetic="source $CMDS_DIR/install_ros_noetic.sh"

alias use_ros_noetic="source $CMDS_DIR/use_ros_noetic.sh"
alias use_ros_foxy="source $CMDS_DIR/use_ros_foxy.sh"