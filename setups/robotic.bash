#relate to ros or arduino or robotic


#alias arduino2='~/Downloads/arduino-ide_2.0.0-rc3_Linux_64bit/arduino-ide'
alias arduino='sudo ~/Downloads/arduino-1.8.19/arduino'
#some times arduino have upload problem use
#sudo chmod a+rw /dev/ttyACM0

alias use_ros_noetic='
    source /opt/ros/noetic/setup.bash
    source ~/additional_noetic_pkg/devel/setup.bash
'

export ROS_ROMAIN_ID=30 #TURTLEBOT3
export GAZEBO_IP=127.0.0.1
export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models
alias use_ros_foxy="
    alias nb='nano ~/.bashrc'
    alias sb='source ~/.bashrc'
    alias gs='git status'
    alias gp='git pull'
    alias cw='cd ~/colcon_ws'
    alias cs='cd ~/colcon_ws/src'
    alias cb='cd ~/colcon_ws && colcon build --symlink-install && source ~/.bashrc'
    source /opt/ros/foxy/setup.bash
    source ~/colcon_ws/install/local_setup.bash
    alias ros2_pkg_create='ros2 pkg create --build-type ament_python $1'
    alias ros_build_ws='rm -r build install log && colcon build'

    source ~/turtlebot3_ws/install/setup.bash
    source ~/construct_sim_ws/install/setup.bash
"

#turtlebot3 on foxy
alias install_turtlebot3='
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



