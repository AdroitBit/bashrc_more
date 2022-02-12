#idc. I hate command's complexity
alias cls='clear'
alias check_space='ncdu --exclude /mnt'

#idc about sudo
alias rm_='sudo rm -r'

#sudo apt-get install zip unzip
#unzip

alias all_perm='sudo chmod 777 $1'

is_on_wsl(){
    if grep -q WSL /proc/version; then
        echo "True"
    else
        echo "False"
    fi
}