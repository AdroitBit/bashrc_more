SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

alias install_ros="source $CMDS_DIR/cmds/install_ros_foxy.sh"
alias ros_build_ws='colcon build'

source /opt/ros/foxy/setup.bash
alias ros2_create_pkg='ros2 pkg create --build-type ament_python $1'