# Open with tmux - attach to last session if any are open
if test "$TMUX" = ""; tmux a || tmux new -s default; end

# For Kitty; set $TERM to xterm-256color instead of xterm-kitty
if test "$TMUX" = ""; set -gx TERM xterm-256color; end

# FZF
source $HOME/.config/fish/fzf-key-bindings.fish

# NeoVim as default editor
set VISUAL nvim; set -gx VISUAL EDITOR nvim; set -gx EDITOR

# Vim Mode
fish_vi_key_bindings

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
set -gx GOPATH $HOME/go
set -gx PATH $GOPATH $PATH /usr/local/go/bin /usr/local/bin /usr/sbin $HOME/bin/terraform

starship init fish | source
