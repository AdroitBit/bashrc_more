#This will make us beable to connect to X-Server
export DISPLAY="$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0"


#fix segmentation fault error by
#add libgl_alwats_indirect
#add -nowgl as parameter in xserver
export LIBGL_ALWAYS_INDIRECT=
#use hardware acceleration
export LIBGL_ALWAYS_SOFTWARE=