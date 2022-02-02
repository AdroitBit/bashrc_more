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