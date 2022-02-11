export GAZEBO_IP=127.0.0.1

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

alias use_ros_noetic="source $SCRIPT_DIR/noetic/setup.sh"
alias use_ros_foxy="source $SCRIPT_DIR/foxy/setup.sh"

alias ros_create_ws="python $SCRIPT_DIR/general_cmds/ros_create_ws.py \$1"