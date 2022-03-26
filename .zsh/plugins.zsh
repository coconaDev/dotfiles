# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'
zstyle ':completion:*' ignore-parents parent pwd ..    # ../ の後は今いるディレクトリを補間しない
zstyle ':completion:*:default' menu select=1           # 補間候補一覧上で移動できるように
zstyle ':completion:*:cd:*' ignore-parents parent pwd  # 補間候補にカレントディレクトリは含めない

# 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

zstyle :compinstall filename '~/.zshrc'

# 補完候補を一覧から選択
zstyle ':completion:*:default' menu select=2

# p10kのインストール
zinit ice depth=1; zinit light romkatv/powerlevel10k

# シンタックスハイライトのプラグイン
zinit light z-shell/fast-syntax-highlighting

# サジェスト検索
zinit light zsh-users/zsh-autosuggestions
bindkey '^g' autosuggest-accept
