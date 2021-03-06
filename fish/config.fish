# Open with tmux - attach to last session if any are open
# if test "$TMUX" = ""; tmux a || tmux new -s default; end

# For Kitty; set $TERM to xterm-256color instead of xterm-kitty
if test "$TMUX" = ""; set -gx TERM xterm-256color; end

# NeoVim as default editor
set -gx EDITOR nvim

# Vim Mode
fish_vi_key_bindings

# Aliases
alias vi="nvim"
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
alias upp="sudo apt update && sudo apt upgrade -y; flatpak update -y"
alias copyq="flatpak run com.github.hluk.copyq"
alias code="codium"


# ENV
set -gx GOPATH $HOME/go
set -gx PATH $HOME/.cargo/bin $GOPATH/bin $PATH $HOME/bin $HOME/.local/bin /usr/local/go/bin /usr/local/bin /usr/sbin $HOME/.nimble/bin (yarn global bin) $HOME/.pulumi/bin

# Rust
# source "$HOME/.cargo/env"
starship init fish | source
