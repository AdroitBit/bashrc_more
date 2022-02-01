# bashrc_more
This is my custom bashrc.<br>
I'm interested in Robotic Engineering so my bashrc setup is around that topic.<br>
And this is mainly designed for WSL with Ubuntu 20.04 with Xserver installed<br>
But It might as well work with native Ubuntu too<br>


### Installation
```
cd ~
git clone https://github.com/VeryHardBit/bashrc_more
echo -e '\nsource ~/bashrc_more/setup.bash\n' >> ~/.bashrc
```

### Added Commands
#### general.bash
- `cls` equivalently to clear
- `check_space` check how much space you have left
- `rm_` equivalently to `sudo rm -r` just shorter

#### usb.bash - this script is mostly written for wsl usb attachment
- `usb_list` preview usb status of wsl
- `usb_attach` connect usb to wsl
- `usb_detach` disconnect that usb from wsl

#### xserver.bash - this script is written for WSL with xserver installed and launched
- no commands added just some environment setup for you

#### robotic.bash
- set your GAZEBO_IP,ROS_DOMAIN_ID,GAZEBO_MODEL_PATH (might as well remove some for your certain task)
- `arduino` launch the arduino program
- `install_ros_foxy` this will install ROS foxy on your computer
- `install_ros_noetic` same but with ROS noetic
- `use_ros_foxy` force your current terminal to use ROS foxy and these following commands will be added
    - `ros2_create_pkg`
    - `install_turtlebot3`
- `use_ros_noetic` force your current terminal to use ROS noetic