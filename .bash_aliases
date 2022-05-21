#add/remove/update software
alias apti='sudo apt install $1'
alias snapi="sudo snap install $1"
alias aptd='sudo apt purge $1 && sudo apt autoremove'
alias snapd='sudo snap remove $1'
alias aptu='sudo apt update && sudo apt upgrade -y'

#run installed software
#alias emacs='emacs -nw'
alias cmatrix='cmatrix -a'
alias tor='"$HOME"/Downloads/tor-browser_en-US/Browser/start-tor-browser'
alias cactus='cd Linux_Storage/Faks/Druga/bp1; java -jar Cactus.jar'
alias spasm='cd Linux_Storage/Faks/Druga/ar/simulatoriasembler; java -jar SPasm.jar'
alias jbt='cd Downloads/jetbrains-toolbox-1.23.11849; ./jetbrains-toolbox'

#run user written scripts
#alias ytd='cd Documents/vscode/test/testpy; python3 ./ytd.py'


#various system info commands
alias showgpus='lspci -k | grep -A 2 -i "VGA"'
alias showdisplays='xrandr | grep " connected"'
alias showkernels='dpkg --list | grep linux-image'
alias showports='sudo netstat -tulpn | grep LISTEN'
alias ipe='curl ipinfo.io/ip'
alias diskspace="du -S | sort -n -r |more"
alias psaux='ps aux'
alias fstab='cat /etc/fstab'
alias showdpi='xdpyinfo | grep dots'
alias localhost='echo /var/www/html/'
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
alias prva='cd ~/Linux_Storage/Faks/Prva'
alias druga='cd ~/Linux_Storage/Faks/Druga'
alias treca='cd ~/Linux_Storage/Faks/Treca'
alias scripts='cd ~/Documents/bash_scripts'
alias downloads='cd ~/Downloads/'
alias root='cd /'
alias home='cd ~'
alias localhostjmp='cd /var/www/html/'
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

#git commands
alias add='git add '
alias commit='git commit -m '
alias push='git push origin '
alias addorigin='git remote add origin '
alias pull='git pull origin'
alias clone='git clone'
alias logt='git log --graph --pretty=oneline --abbrev-commit'
#generate virtual enviroment for python scripts
alias pyvenv='python3 -m venv .venv'

#generate a ci4 project template
alias ci='composer create-project codeigniter4/appstarter' 

