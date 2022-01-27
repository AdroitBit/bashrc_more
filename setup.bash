SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source $SCRIPT_DIR/setups/general.bash
source $SCRIPT_DIR/setups/usb.bash
source $SCRIPT_DIR/setups/xserver.bash

source $SCRIPT_DIR/setups/robotic/setup.bash

cd ~
cd ~/ros_noetic_ws
ros_create_ws test_ws