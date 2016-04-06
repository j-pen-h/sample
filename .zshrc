######################
#    .zshrc file     #
######################
#----------------------------#
# 環境変数
#----------------------------#
export LANG=ja_JP.UTF-8   # Japanese Unicode 8bit
#export LANG=ja_JP.eucJP   # Japanese EUC(Extended UNIX Code)
export EDITOR=vim         # エディタ
export LISTMAX=0          # 補完候補が多い場合の表示
limit coredumpsize 0      # コアダンプファイルのサイズ
umask 022                 # パーミッション644
#umask 000                 # パーミッション666

### PATH ###
PATH="./:$HOME/bin:$PATH"

### VNC ###
export XAUTHORITY=$HOME/.vnc/.Xauthority

### DISPLAY ###
#if ["$VNCDESKTOP"]; then
#    if [!"$SGE_ACCOUNT"]; then
#        export DISPLAY=`echo $VNCDESKTOP | awk '{print $1}'`.0
#    fi
#fi

#----------------------------#
# キーバインド 
#----------------------------#
export WORDCHARS="*?_-.[]~=/&;!#$%^(){}<>=."  # 単語として認識する文字(emacsモード用)

bindkey -e
#bindkey -v

### vi insert mode ###
### vi command mode ###

#----------------------------#
# シェルの動作に燗する設定
#----------------------------#
setopt auto_cd                 # cdの際、"cd"無しでも移動
setopt auto_pushd              # cdの際、自動でpushd。"cd -[Tab]"でリスト表示
setopt pushdtohome             # pushdの際、引数がないとHOMEに移動
setopt correct                 # コマンド名を間違えた場合に近いコマンドを表示
setopt noautoremoveslash       # 最後のスラッシュを自動で削除しない
setopt extended_glob           # 格調グロブを使用する
setopt multios                 # マルチリダイレクトON
#setopt no_multios             # マルチリダイレクトOFF
setopt interactive_comments    # コマンドラインでも"#"以降をコメントとみなす
unsetopt promptcr              # 出力の末尾に改行コードがない場合でも表示

### コマンドラインスタック ###
setopt noflowcontrol           # フロー制御[Ctrl-s][Ctrl-q]を無効に
bindkey '^q' push-line-or-edit # [Ctrl-q]入力中のコマンドをスタック

### 補完 ###
autoload -U compinit   # デフォルトの補完機能をON
compinit               # デフォルトの補完機能をON

zstyle ':completion:*:default' list-colos ${(s.:.)LS_COLORS}   # 補完候補の色をLS_COLORSに合わせる
zstyle ':completion:*:default' menu select                     # 補完候補をカーソルで選択
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'           # 補完で大文字小文字を区別しない
setopt menu_complete      # 補完と同時に絞り込み
setopt complete_aliases   # aliasを展開して補完する
setopt list_packed        # 補完候補をコンパクト表示
setopt nolistbeep         # 補完候補が無い場合にビープ音を鳴らさない

zmodload zsh/complist                                           # "bindkey -M menuselect"用モジュール
bindkey -M menuselect "^k" accept-and-infer-next-history        # [Ctrl-k]補完候補を選択中にさらに次の補完候補を表示
bindkey -M menuselect "^r" history-incremental-search-forward   # [Ctrl-k]補完候補を選択中に候補をインクリメント検索
bindkey "[Z" reverse-menu-complete                            # [Shift-Tab]補完候補の選択(逆方向)

#----------------------------#
# プロンプト
#----------------------------#
autoload colors    # 色の名称で設定する場合に必要
colors             # 色の名称で設定する場合に必要

PROMPT="%{${fg[green]}%}%U%n%%%{${reset_color}%}%u "
RPROMPT="%{${reset_color}%}[%70<...<%~]%{${reset_color}%}"
PROMPT2="%{${fg[magenta]}%}%_%%{${reset_color}%} "
SPROMPT="%{${fg[magenta]}%}zsh: correct \"%R\" to \"%B%U%r%u%b\"? [%B%Uy%u%bes/%B%Un%u%bo/%B%Ue%u%bdit/%B%Ua%u%bbort]:%{${reset_color}%} "

### viのモードをプロンプトに表示 ###

#----------------------------#
# コマンド履歴
#----------------------------#
HISTFILE=~/zsh_history        # コマンド履歴のファイル名
HISTSIZE=10000                # コマンド履歴の最大数
SAVEHIST=10000                # コマンド履歴(保存)の最大数
setopt hist_ignore_all_dups   # 過去と同じコマンドは履歴に残さない
setopt hist_ignore_dups       # 直前と同じコマンドは履歴に残さない
setopt share_history          # 履歴を共有する

### 履歴検索 ###
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end   # [Ctrl-p]履歴を検索(新しい方から)
bindkey "^n" history-beginning-search-forward-end    # [Ctrl-n]履歴を検索(古い方から)
bindkey "^r" history-incremantal-search-backward     # [Ctrl-r]履歴をインクリメンタル検索(新しい方から)
bindkey "^s" history-incremantal-search-forward      # [Ctrl-s]履歴をインクリメンタル検索(古い方から)

#----------------------------#
# alias
#----------------------------#
### PRODUCT_DIR ###

### COMMAND ###
alias new='newgrp aaa'
alias pwd='pwd -L'
alias ls='ls -CF --color=auto'
#alias ls='ls -CF --color=always'
alias l='pwd;ls -l --time-style=long-iso'
alias ll='pwd;ls -la --time-style=long-iso'
alias lt='pwd;ls -lt --time-style=long-iso'
alias le='pwd;env LC_TIME=C ls -lF --color=always'
function cd() { pushd $1 > /dev/null; if [ $? = 0 ]; then l; fi }
alias bd='popd > /dev/null; l'
alias d='dirs -vl | sort -nr | tail -n10'
alias D='dirs -vl | sort -nr'
alias lcd='cd'
alias dc='cd'
alias mv='mv -i'
alias cp='cp -i -p'
function cpcd() { cp $@; cd $@[-1] }
alias cdcp='cpcd'
alias mkd='mkdir'
alias mdk='mkdir'
function mkdd() { export TODAY=`date "+%y%m%d"`; mkdir $[TODAY] }
function mkddd() { export TODAY=`date "+%Y%m%d"`; mkdir $[TODAY] }
alias up1='cd ../'
alias up2='cd ../../'
alias up3='cd ../../../'
alias up4='cd ../../../../'
alias up5='cd ../../../../../'

alias les='/usr/bin/less -QRXil'
alias less='/usr/bin/less -QRXil'
alias lesss='/usr/bin/less -QRXil -S'

alias so='source'
alias hi='history -f'
alias zsdiff='zdiff -y'
alias zsdiff-s='zdiff -y --suppress-common-line'
alias bc='bc -lg'
alias vi='/usr/bin/vim'
alias gvim='gvim -geometry 120x60+0+0'
alias sge='cat ~/.memo_sge'
alias proc='cat ~/.memo_proc_icc'

function pront_laptime() { grep 'T&M#' $1 | grep 'RunTime:' }
alias ff='firefox'

### TOOL ###

#----------------------------#
# 各ツールのman
#----------------------------#
ICC=/cadtools/syn1312-SP5-ICCompiler   # ICCompiler
PT=/cadtools/syn1312-SP2-PT            # PrimeTime
FM=/cadtools/syn1312-SP3-FM            # Formality

### コマンド用 ###
#補完候補の取得
function _icc_man() { icc_man=($(echo $ICC/doc/icc/man/cat[1-3]/*(.:t:r))); reply=($icc_man) }
function _tcl_man() { icc_man=($(echo $ICC/doc/snps_tcl/man/cat[2-3]/*(.:t:r))); reply=($tcl_man) }
function _pt_man() { icc_man=($(echo $PT/doc/pt/man/cat[1-3]/*(.:t:r))); reply=($pt_man) }
function _fm_man() { icc_man=($(echo $FM/doc/fm/man/cat[1-3]/*(.:t:r))); reply=($fm_man) }
#実行コマンドのalias
alias icc_man='man -M $ICC/doc/icc/man'
alias tcl_man='man -M $ICC/doc/snps_tcl/man'
alias pt_man='man -M $PT/doc/pt/man'
alias fm_man='man -M $FM/doc/fm/man'
#実行コマンドに対する補完候補の割り当て([Tab]で補完候補が出る)
compctl -K _icc_man icc_man
compctl -K _tcl_man tcl_man
compctl -K _pt_man pt_man
compctl -K _fm_man fm_man


