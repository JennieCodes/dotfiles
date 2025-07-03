# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
plugins=(git)

source $ZSH/oh-my-zsh.sh
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# --- POWERLEVEL10K CONFIG ---
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
[[ -r "$HOME/.powerlevel10k/powerlevel10k.zsh-theme" ]] && source "$HOME/.powerlevel10k/powerlevel10k.zsh-theme"

# --- TMUX OPERATOR ALIASES (Cleaned) ---
alias t='tmux attach -t main || tmux new -s main'
alias r='tmux attach -t recon || tmux new -s recon'
alias e='tmux attach -t exploit || tmux new -s exploit'
alias s='tmux switch-client -t'
alias tl='tmux ls'
alias tk='tmux kill-session -t'
alias ta='tmux attach -t'
alias ops='echo "Aliases: t (main) | r (recon) | e (exploit) | s <name> (switch) | tl (list) | tk <name> (kill) | ta <name> (attach)"'

alias ff="fzf --preview '~/bin/fzf-preview.sh {}'"
alias ff="fzf --preview '~/bin/fzf-preview.sh {}'"
export LANG=en_IN.UTF-8
export LC_ALL=en_IN.UTF-8
eval "$(zoxide init zsh)"
alias ls='eza --icons'
alias ll='eza -la --icons --header --long'
alias lt='eza --tree --icons'
alias la='eza -lbhHigUmuSa'
export sharepath='/media/sf_hostshare'
alias dotpush='rsync -av --delete ~/dotfiles/ $sharepath/dotfiles-vm/'
alias dotpull='rsync -av --delete $sharepath/dotfiles-vm/ ~/dotfiles/'

