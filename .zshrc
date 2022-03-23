###############	HISTORY	########################################
# history
HISTFILE=~/.zsh-history		# 履歴を保存するファイル
HISTSIZE=1000			# メモリに保存する履歴のサイズ
SAVEHIST=1000			# ファイルに保存する履歴のサイズ

# share .zsh-history
setopt inc_append_history	# 実行時に履歴をファイルに追加
setopt share_history		# 履歴を他のシェルと共有

##############	COMPLEMENT	#################################
# enable completion
autoload -Uz compinit && compinit

# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

# 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

zstyle :compinstall filename '~/.zshrc'

# select=2: 補完候補を一覧から選択
zstyle ':completion:*:default' menu select=2

################  OTHERS  ######################################
# automatically change directory when dir name is typed
setopt auto_cd

# disable ctrl+s, ctrl+q
setopt no_flow_control

setopt autocd beep
unsetopt nomatch
bindkey -v



################   LOGINSHELL	################################

# pywal settings
    # WAL_IMGS=($(ls -d ~/dotfiles/wallpaper-images/*))
    WAL_IMGS+=($(ls -d ~/dotfiles/wallpaper-images/*))
    SEC=`date +%S`
    I=$((SEC%$(echo ${#WAL_IMGS[@]})+1))
    wal -i ${WAL_IMGS[$I]}

