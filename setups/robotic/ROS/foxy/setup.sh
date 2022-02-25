SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

source /opt/ros/foxy/setup.bash
source ~/ros_foxy_thing/learning_ws/install/setup.bash
source ~/ros_foxy_thing/turtlebot2_ws/install/setup.bash
mkdir -p ~/ros_foxy_thing/
cd ~/ros_foxy_thing

export ROS_DOMAIN_ID=30 #TURTLEBOT3
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/ros_foxy_thing/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models

alias install_ros="source $CMDS_DIR/install_ros.sh"
alias ros_build_ws='colcon build'
alias ros_create_pkg='ros2 pkg create --build-type ament_python $1'

alias install_turtlebot3="source $CMDS_DIR/install_turtlebot3.sh"