#general ROS distro?
#general command that work the same in every distros

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

alias ros_create_ws="python $CMDS_DIR/ros_create_ws.py \$1"