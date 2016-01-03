# .bash_profile

# 環境変数設定
PATH=$PATH:$HOME/bin

export PATH

export GREP_COLOR='1;37;41'

export LC_ALL=C

# 文字コード
export LANG=ja_JP.UTF-8

# node.js
export NODE_PATH=/usr/local/lib/node_modules

# http://d.tir.jp/pw?bk-screen
printf "\033P\033]0;$HOSTNAME\007\033\\"

# docker
eval "$(docker-machine env default)"

# .bashrcを反映
source ~/.bashrc
