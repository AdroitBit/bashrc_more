#install turtlebot3 on foxy
set -o pipefail

echo "Robot specification : Turtlebot3"
echo "If you're ready to install just press [ENTER] or [CTRL-C] if you aren't yet"
read

echo "[Install necessary packages]"
sudo apt-get install ros-foxy-gazebo-* -y &&
sudo apt install ros-foxy-cartographer ros-foxy-cartographer-ros -y &&
sudo apt install ros-foxy-navigation2 ros-foxy-nav2-bringup -y &&
source ~/.bashrc &&
sudo apt install ros-foxy-dynamixel-sdk ros-foxy-turtlebot3-msgs ros-foxy-turtlebot3 ros-foxy-hls-lfcd-lds-driver -y

echo "[Creating turtlebot3 workspace]"
ws_name="turtlebot3_ws"
ros_create_ws $ws_name
cd $ws_name
ws_name=$(pwd)

echo "[Downloading turtlebot3 packages]"
cd $ws_name/src
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations

echo "[Building workspace]"
cd $ws_name
catkin_make

echo "[Installation completed]"
cd $ws_name/..