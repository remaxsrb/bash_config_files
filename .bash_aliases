#add/remove/update software
alias apti='sudo apt-get install $1'
alias snapi="sudo snap install $1"
alias aptd='sudo apt-get purge $1 && sudo apt-get autoremove'
alias snapd='sudo snap remove $1'
alias aptu='sudo apt-get update && sudo apt-get upgrade -y'

#run installed software
#alias emacs='emacs -nw'
alias cmatrix='cmatrix -a'
alias tor='"$HOME"/Downloads/tor-browser_en-US/Browser/start-tor-browser'
alias cactus='cd Linux_Storage/Faks/Druga/bp1; java -jar Cactus.jar'


#various system info commands
alias showGPUS='lspci -k | grep -A 2 -i "VGA"'
alias showDisplays='xrandr | grep " connected"'
alias showKernels='dpkg --list | grep linux-image'
alias showPorts='sudo netstat -tulpn | grep LISTEN'
alias ipe='curl ipinfo.io/ip'

#extraction function
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

#Jump to directories
alias cdfax='cd Linux_Storage/Faks'
alias cdbash='cd Documents/bash_scripts'

#directory managment
alias rmd='rm -r $1'
alias mvd='mv -r $1'

#info
alias lsa='ls -lah  --color=auto'
alias ls='ls --color=auto'

#clear terminal
alias c='clear'

#shutdown
alias shutdown='shutdown now'

#exit terminal
alias e='exit'

#colored grep moved from .bashrc
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
