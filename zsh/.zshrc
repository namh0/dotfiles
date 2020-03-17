# Open with tmux - attach to last session if any are open
if [ -z "$TMUX" ]; then tmux a || tmux new -s default; fi

# For Kitty; set $TERM to xterm-256color instead of xterm-kitty
if [ "$TMUX" = "" ]; then export TERM="xterm-256color"; fi

unset SSH_ASKPASS
eval "$(starship init zsh)"
# ANTIBODY
source <(antibody init)
antibody bundle mafredri/zsh-async
#antibody bundle sindresorhus/pure
antibody bundle zdharma/fast-syntax-highlighting
antibody bundle zsh-users/zsh-completions
# END ANTIBODY

# Aliases 
alias vi="nvim"
alias vim="nvim"
alias c="xclip -selection clipboard"
alias v="xclip -o"
alias open="xdg-open"
alias ff="firefox"
alias vpu="nvim +PlugUpdate +qall"
alias py="python3"
alias ls="exa"
alias l="exa"
alias grep="grep --color=auto"
alias wgm="$HOME/dotfiles/scripts/wgm.sh"
alias wgd="$HOME/dotfiles/scripts/wgd.sh"
alias wgs="sudo wg show"
alias tfswitch="tfswitch -b $HOME/bin/terraform"

# ENV
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH:/usr/local/go/bin:/usr/local/bin:/usr/sbin:$HOME/bin/terraform"
export GROFF_NO_SGR=yes

# Vim Mode
bindkey -v
export KEYTIMEOUT=1

bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after
# returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl + arrow move forward/backward a word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# FZF
source $HOME/dotfiles/zsh/fzf-key-bindings.zsh

# Work Scripts
#[ -f ~/Documents/work/gitlab/scripts/.work-scripts.zsh ] && source ~/Documents/work/gitlab/scripts/.work-scripts.zsh

# ZSH history
HISTSIZE=500000
SAVEHIST=100000
HISTFILE=$HOME/.zsh_history
setopt inc_append_history
setopt hist_ignore_dups

# Colors in completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz compinit; compinit

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/namho/google-cloud-sdk/path.zsh.inc' ]; then . '/home/namho/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/namho/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/namho/google-cloud-sdk/completion.zsh.inc'; fi

# Kubernetes
# source <(kubectl completion zsh)
# source <(helm completion zsh)

# NeoVim as default editor
VISUAL=nvim; export VISUAL EDITOR=nvim; export EDITOR
