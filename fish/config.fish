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
alias cat="bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias l="ls -la"
alias ls 'eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias python=python3
