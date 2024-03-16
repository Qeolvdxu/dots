# remove welcome
set -U fish_greeting ""


# powerline splash
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"

# !! binding
function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item 

# bindings
fish_vi_key_bindings

# splash screen art
cat ~/.config/fish/splash

export PATH="/home/hayden/.bin:/home/hayden/.config/emacs/bin:$PATH"

alias ls="exa --icons --git"
alias cat="bat"
