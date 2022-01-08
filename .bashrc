# pywal settings
    # WAL_IMGS=($(ls -d ~/dotfiles/wallpaper-images/*))
    WAL_IMGS+=($(ls -d ~/dotfiles/wallpaper-images/*))
    SEC=`date +%S`
    I=$((SEC%$(echo ${#WAL_IMGS[@]})+1))
    wal -i ${WAL_IMGS[$I]}

PS1="\[\033[1;30m\]\D{%m.%d} \t \[\033[1;32m\]\u@\h \[\033[1;35m\]\s \[\033[1;33m\]\w\[\033[36m\]\$(__git_ps1)\[\033[00m\]\n\$ "

if [ -f /path/to/git-prompt.sh ]; then
    source /path/to/git-prompt.sh
fi
if [ -f /path/to/git-completion.bash ]; then
    source /path/to/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
