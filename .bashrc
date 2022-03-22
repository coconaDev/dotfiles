# pywal settings
    # WAL_IMGS=($(ls -d ~/dotfiles/wallpaper-images/*))
    WAL_IMGS+=($(ls -d ~/dotfiles/wallpaper-images/*))
    SEC=`date +%S`
    I=$((SEC%$(echo ${#WAL_IMGS[@]})+1))
    wal -i ${WAL_IMGS[$I]}


