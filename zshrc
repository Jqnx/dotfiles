# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"

# use vim as standard editor
export VISUAL=nvim
export EDITOR="$VISUAL"

#--------------------------------
# Aliases
#--------------------------------

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../../'

# use nvim if available
if [ -x "$(command -v nvim)" ]; then
    alias vim='nvim'
fi

#--------------------------------
# zplug
#--------------------------------

source ~/.zplug/init.zsh

# oh-my-zsh plugins
zplug "plugins/aliases", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
#zplug "plugins/history-substring-search", from:oh-my-zsh, defer:3
zplug "plugins/rsync", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/systemd", from:oh-my-zsh
zplug "plugins/ansible", from:oh-my-zsh
zplug "plugins/gh", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/minikube", from:oh-my-zsh
zplug "plugins/nmap", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh

# custom plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search", as: plugin
zplug "chriskempson/base16-shell"
zplug "hlissner/zsh-autopair"
zplug "djui/alias-tips"
zplug "z-shell/zsh-eza"
zplug "anatolykopyl/sshukh"
zplug "brokendisk/dune-quotes"
zplug "zsh-users/zsh-completions"

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Load zplug plugins
zplug load --verbose

#source ~/catppuccin-themes/zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
#plugins=(ansible command-not-found common-aliases extract gh git gitignore history-substring-search kubectl minikube nmap rsync sudo systemd terraform tmux zsh-autosuggestions zsh-syntax-highlighting)
#fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
#source $ZSH/oh-my-zsh.sh

#--------------------------------
# Autocomplete
#--------------------------------

# catppuccin mocha colors for fzf
#export FZF_DEFAULT_OPTS=" \
#--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
#--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
#--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

#--------------------------------
# Additional tools
#--------------------------------

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin.omp.json)"
eval "$(starship init zsh)"
