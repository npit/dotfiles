# arch
#########
alias upall="sudo pacman -Syu"
alias upallclose="sudo pacman -Syu --noconfirm; and poweroff"
alias mylinux="cd /home/nik/Software/mylinux"
alias aur="trizen"


# X-ey
########
alias sub="subl3"
alias aliases="$TERM_EDITOR $CONFIG/aliases"
alias galiases="$EDITOR $CONFIG/aliases & disown"
alias vars="$CONFIG/variables"
alias gvars="$EDITOR $CONFIG/variables"
alias vimrc="$TERM_EDITOR ~/.vimrc"
alias nvimrc="$TERM_EDITOR ~/.config/nvim/*"
alias vim="nvim"
alias nvim="nvim -p"
alias v="nvim"
alias ee="emacsclient -nw"
alias tmuxrc="$TERM_EDITOR ~/.tmux.conf"
alias i3rc="$TERM_EDITOR ~/.config/i3/config"
alias kcp='kioclient copy'

# custom scripts ctl and manual downloads
######################
alias scripts="$FILEMANAGER $SCRIPTS"
set -x PATH $PATH $SCRIPTS


# directory cd shortcuts
##########################

alias bderun="cd $HOME/work/iit/bderun"
alias work="cd $HOME/work/iit"
alias torr="cd $HOME/Downloads/torrents"
alias disk="df -h"
#
# ncsr work
alias yds="cd ~/work/iit/YDS"
alias bde="cd $HOME/work/iit/BDE/bde-event-detection-sc7"
alias bdedock="cd $HOME/work/iit/dockerfile/docker-bde-event-detection-sc7"
alias bdetools="cd $HOME/work/iit/bdetools"
alias harvest="cd $HOME/work/iit/harvester/harvester-frontend_"
alias trest="cd ~/work/iit/twitterRest"
alias story="cd /home/nik/work/iit/storybot/storybot_repo/storybot"
alias exdisk="cd '/run/media/nik/TOSHIBA EXT/Academic/msc-thesis/datasets/ccv'"
alias phd="cd /home/nik/work/iit/phd/"
alias biorepr="cd /home/nik/work/iit/phd/collabs/biorepr"

# misc
alias perspage="cd /home/nik/Software/personalpage"
alias game="cd /home/nik/Software/game"
alias resource="source $CONFIG/startup.sh"
alias realias="source $CONFIG/aliases"

# terminal
#############
alias sudo='sudo '

alias datec='date -u +"%Y%m%d_%H%M%S"'
alias dated='date -u +"%Y%m%d_%H%M%S"'

alias acl="$TERMINAL & disown"
alias rcl="acl ; exit"
alias temp="watch sensors"
alias makex="chmod +x"
alias ocl="octave --no-gui"
alias dirhere="$FILEMANAGER . & disown"
alias tre="tree"
alias gitls="git diff-tree -r --no-commit-id --name-only"
alias texedit="$TERM_EDITOR -p *.tex *.bib"

# reminders
alias reminders="source $CONFIG/reminders"
alias remindset="$TERM_EDITOR $CONFIG/reminders"
alias hosts='$TERM_EDITOR /etc/hosts'
alias more="less"



# builds
alias repos="cd ~/.m2/repository"

# temporary
# UOA
alias uoa="cd $HOME/uoa/msc-thesis/implementation"
alias qtcrc="qtcreator *.h *.c & disown"
alias qtcrcpp="qtcreator *.hpp *.cpp & disown"


# misc
alias sshconf="$EDITOR ~/.ssh/config"
alias l="ls -l"

# git
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gca="git commit -a -m"
alias gcmsg="git commit -m"
alias gbd="git branch -D"
alias gst="git status"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grs="git reset --soft"
alias grh="git reset --hard"
alias gb="git branch"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gba="git branch -a"
alias gcp="git cherry-pick"
alias gl="git lg"
alias gpom="git pull origin master"
