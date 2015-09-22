export EDITOR=vim
#emacs keybind
#bindkey -e
#vi keybind
bindkey -v

setopt no_beep
setopt auto_cd
setopt auto_menu
setopt auto_list
setopt auto_pushd
setopt correct
setopt list_packed
setopt list_types
setopt nolistbeep
setopt pushd_ignore_dups
setopt nobeep
setopt multios
#setopt no_check_jobs

autoload -U compinit; compinit 

zstyle ':completion:*' list-colors ''

alias ls="ls -GFA"
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi=vim

#PROMPT=$tmp_prompt    # 通常のプロンプト
#PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
#RPROMPT=$tmp_rprompt  # 右側のプロンプト
#SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト

function cd() { builtin cd $@ && ls; }
