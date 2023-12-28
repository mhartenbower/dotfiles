if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias vim="nvim"
alias k="kubectl"

# GOENV config
set --global GOENV_ROOT $HOME/.goenv
fish_add_path $GOENV_ROOT/bin
eval "$(goenv init -)"

# Rust config
fish_add_path $HOME/.cargo/bin
