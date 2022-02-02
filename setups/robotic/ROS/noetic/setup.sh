source /opt/ros/noetic/setup.bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

alias ros_build_ws='catkin_make'
alias install_ros=


export TURTLEBOT_BASE=kobuki
export TURTLEBOT_STACKS=hexagons
export TURTLEBOT_3D_SENSOR=kinect
export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0
#resource to use rplidar on turtlebot2
#https://github.com/roboticslab-fr/rplidar-turtlebot2
#https://answers.ros.org/question/283248/require-help-mapping-using-turtlebot-2-and-an-rp-lidar-a2/


#turtlebot2 yujin kobuki (please make sure too tho)
alias install_turtlebot2="
    source $CMDS_DIR/ros_noetic_install_turtlebot2/from_robotcitizen/cmd.sh
"