echo "[Setup sources.list]"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

echo "[Setup keys]"
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

echo "[Installation]"
sudo apt update
sudo apt install ros-noetic-desktop-full

echo "[Environment setup]"
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
#sudo rosdep init
#rosdep update

echo "[Make the catkin workspace and test catkin_make]"
mkdir -p $HOME/catkin_ws/src
cd $HOME/catkin_ws
catkin_make
cd $HOME
sudo rm -r $HOME/catkin_ws

echo "[Complete]"