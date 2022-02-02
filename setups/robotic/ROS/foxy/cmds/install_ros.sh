echo "You are about to install ros foxy"
echo "If you're ready to install just press [ENTER] or [CTRL-C] if you aren't yet"
read


echo "[Set Locale]"
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

echo "[Setup Sources]"
sudo rm -rf /var/lib/apt/lists/* && sudo apt update && sudo apt install -y curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null'

echo "[Install ROS 2 packages]"
sudo apt update && sudo apt install -y ros-foxy-desktop

echo "[Environment setup]"
source /opt/ros/foxy/setup.sh
sudo apt install -y python3-argcomplete python3-colcon-common-extensions python3-vcstool git

echo "[Make the colcon workspace and test colcon build]"
mkdir -p $HOME/colcon_ws/src
cd $HOME/colcon_ws
colcon build --symlink-Install
cd $HOME
sudo rm -r $HOME/colcon_ws


echo "[Complete]"