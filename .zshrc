export PATH="${PATH}:/usr/local/bin"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export EDITOR=vim
#emacs keybind
#bindkey -e
#vi keybind
bindkey -v

setopt no_beep
setopt auto_cd
setopt auto_menu
setopt auto_list
setopt correct
setopt list_packed
setopt list_types
setopt nolistbeep
setopt auto_pushd
setopt pushd_ignore_dups
setopt nobeep
setopt multios
#setopt no_check_jobs

autoload -U compinit; compinit

zstyle ':completion:*' list-colors ''

alias ls="ls -GFA"
alias rm="rm -i"
alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi=vim
alias ll="ls -l"
alias cp="cp -i"
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +$newdir'
alias date+="date +"%Y%m%d_%I-%M-%S""
alias -s txt=vim
alias -s conf=vim
alias -s log=view

#PROMPT=$tmp_prompt    # 通常のプロンプト
#PROMPT2=$tmp_prompt2  # セカンダリのプロンプト(コマンドが2行以上の時に表示される)
#RPROMPT=$tmp_rprompt  # 右側のプロンプト
#SPROMPT=$tmp_sprompt  # スペル訂正用プロンプト

function cd() { builtin cd $@ && ls; }

# added by Miniconda3 4.3.11 installer
export PATH="/Users/ryohmori/conda/bin:$PATH"
