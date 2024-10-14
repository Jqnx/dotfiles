set -gx TERM xterm-256color
set -gx EDITOR nvim
set -gx PAGER less

#----------------------------------
# Theme
#----------------------------------

# Catppuccin Theme
#fish_config theme save "Catppuccin Frappe"

#set -g async_prompt_functions _pure_prompt_git
#set -g pure_color_git_dirty pure_color_danger

#----------------------------------
# Aliases
#----------------------------------

alias ls "eza --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias l "eza --git-ignore --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias ll "eza --all --header --long --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias llm "eza --all --header --long --sort=modified --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias la "eza -lbhHigUmuSa"
alias lx "eza -lbhHigUmuSa@"
alias lt "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"
alias tree "eza --tree --git --icons --classify --group-directories-first --time-style=long-iso --group --color-scale"

alias g git
alias lg lazygit
alias k kubectl
command -qv nvim && alias vim nvim
command -qv terraform && alias tf terraform




set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"

#----------------------------------
# PATHS
#----------------------------------

fish_add_path bin
fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path /home/jan/.local/bin

# NodeJS
fish_add_path node_modules/.bin

# Go
set -g GOPATH /usr/local/go
fish_add_path $GOPATH/bin

# Homebrew
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#----------------------------------
# Vagrant
#----------------------------------

set -gx VAGRANT_WSL_ENABLE_WINDOWS_ACCESS 1
set -gx VAGRANT_DEFAULT_PROVIDER virtualbox
fish_add_path /mnt/c/Program Files/Oracle/VirtualBox

#----------------------------------
# Homebrew
#----------------------------------

if test -d (brew --prefix)"/share/fish/completions"
    set -p fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -p fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

#----------------------------------
# NodeJS
#----------------------------------

set -gx nvm_default_version latest

#----------------------------------
# Starship
#----------------------------------

starship init fish | source
