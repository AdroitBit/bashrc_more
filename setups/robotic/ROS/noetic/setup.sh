SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR=$SCRIPT_DIR/cmds

source /opt/ros/noetic/setup.bash
mkdir -p ~/ros_noetic_thing/
cd ~/ros_noetic_thing
#source ~/ros_noetic_thing/turtlebot2_ws/devel/setup.bash
source ~/ros_noetic_thing/turtlebot2_robotcitizen_ws/devel/setup.bash

export TURTLEBOT_BASE=kobuki
export TURTLEBOT_STACKS=hexagons
export TURTLEBOT_3D_SENSOR=kinect
export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0




#resource to use rplidar on turtlebot2
#https://github.com/roboticslab-fr/rplidar-turtlebot2
#https://answers.ros.org/question/283248/require-help-mapping-using-turtlebot-2-and-an-rp-lidar-a2/
#https://github.com/Slamtec/rplidar_ros


alias ros_build_ws='catkin_make'
alias ros_create_pkg="catkin_create_pkg \$1 std_msgs roscpp rospy "
alias install_ros="source $CMDS_DIR/install_ros.sh"
#install turtlebot2 yujin kobuki package
#alias install_turtlebot2="source $CMDS_DIR/install_turtlebot2/way2.sh"
#robotcitizen
alias install_turtlebot2="source $CMDS_DIR/install_turtlebot2/way1.sh"
alias install_turtlebot3="source $CMDS_DIR/install_turtlebot3.sh"
#alias install_rplidar=
#he aim for this one
#https://github.com/robopeak/rplidar_ros/wiki