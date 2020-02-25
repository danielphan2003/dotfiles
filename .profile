# Profile file. Runs on login. Environmental variables are set here.

# Default programs:
export VISUAL="vim"
export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILE="nautilus"

# Adds useful directories
export PATH="${PATH}:$HOME/.local/bin:$HOME/.pub-cache/bin"
export LOCAL_ETC="${HOME}/.local/etc"

# Adds XDG default folders
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_RUNTIME_DIR="${HOME}/.local/run"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"

# ibus-setup
export GTK_IM_MODULE="ibus"
export XMODIFIERS=@im=ibus
export QT_IM_MODULE="ibus"

# ~/ Clean-up
export ZSH="$HOME/.oh-my-zsh"
export ZDOTDIR="$HOME/.config/zsh"

export BSPWMRC="${LOCAL_ETC}/bspwm/bspwmrc"
export BSPWM_STATE="${XDG_CACHE_HOME}/bspwm/state.json"
export BSPWM_FIFO="${XDG_CACHE_HOME}/bspwm/wm_state"

[ "$TERM" = "xterm" ] && {
  export TERM="xterm-256color"
}
