import os
import sys
if os.environ["ROS_DISTRO"]=="noetic":
    os.system(f"catkin_create_pkg {sys.argv[0]} std_msgs roscpp rospy")