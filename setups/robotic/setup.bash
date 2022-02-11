#relate to ros or arduino or robotic

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds


source $SCRIPT_DIR/Arduino/setup.sh
source $SCRIPT_DIR/ROS/setup.sh