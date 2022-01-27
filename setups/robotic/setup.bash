#relate to ros or arduino or robotic

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CMDS_DIR='$SCRIPT_DIR/cmds'
export ROS_DOMAIN_ID=30 #TURTLEBOT3
export GAZEBO_IP=127.0.0.1


#alias arduino2='~/Downloads/arduino-ide_2.0.0-rc3_Linux_64bit/arduino-ide'
alias arduino='sudo ~/Downloads/arduino-1.8.19/arduino'
#some times arduino have upload problem.just use $ sudo chmod a+rw /dev/ttyACM0

alias install_ros_foxy="source $CMDS_DIR/install_ros_foxy.sh"
alias install_ros_noetic="source $CMDS_DIR/install_ros_noetic.sh"

alias use_ros_noetic="source $CMDS_DIR/use_ros_noetic.sh"
alias use_ros_foxy="source $CMDS_DIR/use_ros_foxy.sh"

#turtlebot3 on foxy
alias ros_foxy_install_turtlebot3='
    cd ~ &&
    sudo apt-get install ros-foxy-gazebo-* -y &&
    sudo apt install ros-foxy-cartographer ros-foxy-cartographer-ros -y &&
    sudo apt install ros-foxy-navigation2 ros-foxy-nav2-bringup -y &&
    source ~/.bashrc &&
    sudo apt install ros-foxy-dynamixel-sdk ros-foxy-turtlebot3-msgs ros-foxy-turtlebot3 ros-foxy-hls-lfcd-lds-driver -y &&

    mkdir -p ~/turtlebot3_ws/src && cd ~/turtlebot3_ws/src &&
    git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3 &&
    git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations &&
    cd ~/turtlebot3_ws &&
    colcon build
'
#turtlebot kobuki on ros noetic
