# Profile file. Runs on login. Environmental variables are set here.

# Default programs:
export VISUAL="nvim"
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"

# Adds useful directories
export PATH="${PATH}:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//'):$HOME/.pub-cache/bin"
export LOCAL_ETC="${HOME}/.local/etc"

# XDG configs
export XDG_CURRENT_DESKTOP="GNOME"
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

export LOCATION="Ho_Chi_Minh"

export BW_SESSION="GOLgWKuq5Z0LenmmBvBNRueZK1MsdeVlvaPz9PRq7wfupDvBCGPzchZWPqCkoZD2dX1jjEhVCZQrm7aGeD5liA=="

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
