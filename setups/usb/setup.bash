alias usb_list='powershell.exe "usbipd wsl list"'
alias usb_attach='powershell.exe "usbipd wsl attach -b $1"'
alias usb_detach='powershell.exe "usbipd wsl detach -b $1"'

alias usb_perm='ls -l /dev | grep ttyUSB'
#alias usb_writable=''