set -o pipefail


echo "Robot specification : Turtlebot2 yujin Kobuki"
echo "[WARNING] : This installation is quite long"
echo "If you're ready just press [ENTER] or [CTRL-C] if you aren't yet"
read

echo "[Install necessary packages]"
sudo apt install -y ros-noetic-joy ros-noetic-map-server ros-noetic-move-base ros-noetic-amcl ros-noetic-gmapping ros-noetic-ecl-* python-is-python3 ros-noetic-dwa-local-planner

echo "[Creating turtlebot2 workspace]"
ws_name="turtlebot2_robotcitizen_ws"
ros_create_ws $ws_name
cd $ws_name
ws_name=$(pwd)

echo "[Download tar.xz files from RobotCitizen gitlab]"
cd $ws_name/src
git clone https://gitlab.com/robotcitizens_training/kobuki_turtlebot2_package.git
cd kobuki_turtlebot2_package
tar -xf kobuki_turtlebot2_package.tar.xz

echo "[Building workspace]"
cd $ws_name
catkin_make

echo "[Installation completed]"
cd $ws_name/..