alias ls='eza'
alias ll='eza -alh'
alias tree='eza --tree --ignore-glob ".git|node_modules"'
alias cat='bat'

function zj
    if count $argv >/dev/null
        zellij --layout $HOME/.config/zellij/layouts/$argv.kdl
    else
        zellij
    end
end
