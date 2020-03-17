# Profile file. Runs on login. Environmental variables are set here.

# Default programs:
export VISUAL="nvim"
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"

# Adds useful directories
export PATH="${PATH}:$HOME/.local/bin:$HOME/.pub-cache/bin:$HOME/.emacs.d/bin"
export LOCAL_ETC="${HOME}/.local/etc"

# Adds XDG default folders
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_RUNTIME_DIR="${HOME}/.local/run"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"

# ~/ Clean-up
export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR="$HOME/.config/zsh"
export ZPROFILE="$ZDOTDIR/.zprofile"
export PROMPTRC="$ZDOTDIR/prompt.zsh"
export ZSHRC="$ZDOTDIR/.zshrc"
export ZPREZTODIR="$HOME/.zprezto"
export ZPREZTORC="$ZDOTDIR/.zpreztorc"

[ "$TERM" = "xterm" ] && {
  export TERM="xterm-256color"
}

#
# DEVELOPMENT
#

# Flutter Web
export CHROME_EXECUTABLE="/usr/bin/google-chrome-stable"

# SSH keys
export SSH_ASKPASS=ssh-askpass

# Java (issues with WMs)
export _JAVA_AWT_WM_NONREPARENTING=1

# Makefile improvements
export MAKEFLAGS="-j$(nproc)"
