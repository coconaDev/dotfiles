# if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # include .zshrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
	. "$HOME/.zshrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export LANG=ja_JP.UTF-8

################   LOGINSHELL	################################

# pywal settings
    # WAL_IMGS=($(ls -d ~/dotfiles/wallpaper-images/*))
    WAL_IMGS+=($(ls -d ~/dotfiles/wallpaper-images/*))
    SEC=`date +%S`
    I=$((SEC%$(echo ${#WAL_IMGS[@]})+1))
    wal -i ${WAL_IMGS[$I]}
