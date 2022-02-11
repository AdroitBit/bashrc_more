# bashrc_more
This is my custom bashrc.<br>
I'm interested in Robotic Engineering so my bashrc setup is around that topic.<br>
This designed to be working for both WSL-Ubuntu and Native Ubuntu

### Installation
```
cd ~
git clone https://github.com/VeryHardBit/bashrc_more
#Be careful as this is entirely override your bashrc
cp ~/bashrc_more/bashrc ~/.bashrc
```


### Added Commands
- `cls` equivalently to clear

- `check_space` check how much space you have left

- `rm_` equivalently to `sudo rm -r` just shorter

- `usb_list` preview usb status of wsl

- `usb_attach` connect usb to wsl

- `usb_detach` disconnect that usb from wsl

- `arduino` launch the arduino program

- `install_ros` install ROS. The distro version is depent on $ROS_DISTRO in bashrc

- `install_turtlebot3` install turtlebot3 packages.The ROS distro version is depent on $ROS_DISTRO in bashrc

- `install_turtlebot2` install turtlebot3 packages.The ROS distro version is depent on $ROS_DISTRO in bashrc( currently found for ROS noetic)




### Added environment setup
- set your DISPLAY (for WSL) to make you beable to connect to Xserver

- set your GAZEBO_IP,ROS_DOMAIN_ID,GAZEBO_MODEL_PATH (might as well remove some for your certain task)


### Trying to add this commands (or make it works)
- `ros_create_ws` create ROS workspace

- `ros_create_pkg` create ROS package
