SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

source /opt/ros/foxy/setup.bash
mkdir -p ~/ros_foxy_thing/

export ROS_DOMAIN_ID=30 #TURTLEBOT3
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/ros_foxy_thing/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models

alias install_ros="source $CMDS_DIR/cmds/install_ros_foxy.sh"
alias ros_build_ws='colcon build'
alias ros_create_pkg='ros2 pkg create --build-type ament_python $1'

