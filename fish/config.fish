if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start ssh-agent
if not set -q SSH_AUTH_SOCK
    ssh-agent -c | source
end

fish_add_path ~/.local/bin
set -x STARSHIP_CONFIG /Users/matheuscunha/.config/starship/starship.toml

starship init fish | source
zoxide init fish | source

# Aliases
alias l="ls -la"
alias ls='eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias python="python3"
alias ..="cd .."
alias k="kubectl"
alias g="git"
alias gc="git commit"
alias gca="git commit -a -m"
alias n="nvim"
alias ni="npm install"
alias nd="npm run dev"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# go
set -gx GOPATH "$HOME/go"
fish_add_path "$GOPATH/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
