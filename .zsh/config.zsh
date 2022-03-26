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



################  OTHERS  ######################################
# automatically change directory when dir name is typed
setopt auto_cd

# disable ctrl+s, ctrl+q
setopt no_flow_control

# 日本語
export LANG=ja_JP.UTF-8

setopt autocd beep
unsetopt nomatch
bindkey -v

