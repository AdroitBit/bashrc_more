set -o pipefail
echo "Robot specification : Turtlebot3"
echo "If you're ready just press [ENTER] or [CTRL-C] if you aren't yet"
echo "If the following process doesn't install properly,please refer to https://emanual.robotis.com/docs/en/platform/turtlebot3/quick-start/ "
read

echo "[Install dependencies packages]"
sudo apt-get -y install ros-noetic-joy ros-noetic-teleop-twist-joy \
    ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
    ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
    ros-noetic-rosserial-python ros-noetic-rosserial-client \
    ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
    ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
    ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
    ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers

echo "[Install turtlebot3 packages]"
sudo apt install -y ros-noetic-dynamixel-sdk  ros-noetic-turtlebot3-msgs ros-noetic-turtlebot3

echo "[Creating turtlebot2 workspace]"
ws_name="turtlebot3_ws"
ros_create_ws $ws_name
cd $ws_name
ws_name=$(pwd)

echo "[Download turtlebot3 simulation package]"
cd $ws_name/src
git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git

echo "[Building workspace]"
cd $ws_name
catkin_make

echo "[Installation completed]"
cd $ws_name/..