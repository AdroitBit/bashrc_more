# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi




####################################################################################################
#This is from VeryHardBit/custom_bashrc

if grep -q WSL /proc/version;#If you're using WSL
then 
    #You will be given setup of X-server for WSL
    export DISPLAY="$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0"
    export LIBGL_ALWAYS_INDIRECT=
    #use hardware acceleration
    export LIBGL_ALWAYS_SOFTWARE=
fi


alias cls='clear'
alias check_space='ncdu --exclude /mnt'

alias rm_='sudo rm -r'

#sudo apt-get install zip unzip
#unzip
alias all_perm='sudo chmod 777'

alias usb_list='powershell.exe "usbipd wsl list"'
alias usb_attach='powershell.exe "usbipd wsl attach -b $1"'
alias usb_detach='powershell.exe "usbipd wsl detach -b $1"'
alias usb_perm='ls -l /dev | grep ttyUSB'


#alias arduino='sudo ~/Downloads/arduino-1.8.19/arduino'
alias arduino2='cd ~/Downloads/arduino-ide_2.0.0-rc3_Linux_64bit && ~/Downloads/arduino-ide_2.0.0-rc3_Linux_64bit/arduino-ide'
#sometimes arduino have upload problem.just try $ all_perm /dev/ttyACM0


export ROS_DISTRO="noetic"

if [ "$ROS_DISTRO" == "noetic" ]
then
    source /opt/ros/noetic/setup.bash
    mkdir -p ~/ros_noetic_thing
    cd ~/ros_noetic_thing
    
    source ~/ros_noetic_thing/turtlebot2_robotcitizen_ws/devel/setup.bash
    source ~/ros_noetic_thing/turtlebot3_ws/devel/setup.bash

    export TURTLEBOT_BASE=kobuki
    export TURTLEBOT_STACKS=hexagons
    export TURTLEBOT_3D_SENSOR=kinect
    export TURTLEBOT_SERIAL_PORT=/dev/ttyUSB0
    export GAZEBO_IP=127.0.0.1

    alias ros_create_pkg="catkin_create_pkg \$1 std_msgs roscpp rospy "
    alias ros_build_ws='catkin_make'
    alias ros_create_ws='source ~/bashrc_more/extend_cmds/ros_create_ws.py'

    alias install_ros='source ~/bashrc_more/extend_cmds/install_ros_noetic.sh'
    alias install_turtlebot2='source ~/bashrc_more/extend_cmds/install_turtlebot2_noetic.sh'
    alias install_turtlebot3='source ~/bashrc_more/extend_cmds/install_turtlebot3_noetic.sh'

    #resource to use rplidar on turtlebot2
    #https://github.com/roboticslab-fr/rplidar-turtlebot2
    #https://answers.ros.org/question/283248/require-help-mapping-using-turtlebot-2-and-an-rp-lidar-a2/
    #https://github.com/Slamtec/rplidar_ros
fi

if [ "$ROS_DISTRO" == "foxy" ]
then
    source /opt/ros/foxy/setup.bash
    mkdir -p ~/ros_foxy_thing
    cd ~/ros_foxy_thing

    export ROS_DOMAIN_ID=30 #TURTLEBOT3
    export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:~/ros_foxy_thing/turtlebot3_ws/src/turtlebot3_simulations/turtlebot3_gazebo/models

    alias ros_build_ws='colcon build'
    alias ros_create_pkg='ros2 pkg create --build-type ament_python $1'
    alias install_turtlebot3='source ~/bashrc_more/extend_cmds/install_turtlebot3_foxy.sh'
fi


####################################################################################################