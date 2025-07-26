if status is-interactive
# Commands to run in interactive sessions can go here
end

fish_add_path ~/.local/bin

starship init fish | source
zoxide init fish | source

# Aliases
alias cat="bat --theme=$(defaults read -globalDomain AppleInterfaceStyle &> /dev/null && echo default || echo GitHub)"
alias l="ls -la"
alias ls 'eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions'
alias python=python3
