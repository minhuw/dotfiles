if test -x /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
else if test -x /usr/local/bin/brew
    eval (/usr/local/bin/brew shellenv)
end

fish_add_path -g $HOME/.local/bin

if test -d $HOME/.antigravity/antigravity/bin
    fish_add_path -g $HOME/.antigravity/antigravity/bin
end

if test -d $HOME/.atrium/bin
    fish_add_path -g $HOME/.atrium/bin
end

set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
    if command -q starship
        starship init fish | source
    end
    if command -q atuin
        atuin init fish | source
    end

    if test (uname) = Darwin
        command -q bat; and alias cat bat
        command -q eza; and alias ls eza
        command -q rg; and alias grep rg
    end
end
