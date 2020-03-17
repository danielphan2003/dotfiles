######################## SETUP PROMPT ############################

HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="dd/mm/yyyy"
HISTFILE=~/.cache/zsh/history

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi 

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  eval $(keychain --eval --quiet --noask id_ed25519 id_rsa ~/.ssh/id_rsa_pi ~/.ssh/id_rsa_danie)
else
  _evalcache keychain --eval --quiet --noask id_ed25519 id_rsa ~/.ssh/id_rsa_pi ~/.ssh/id_rsa_danie
  if [ "$(< /proc/$SSH_AGENT_PID/comm)" != "ssh-agent" ]; then
    rm "${ZSH_EVALCACHE_DIR:-$HOME/.zsh-evalcache}/init-keychain.sh"
    _evalcache keychain --eval --quiet --noask id_ed25519 id_rsa ~/.ssh/id_rsa_pi ~/.ssh/id_rsa_danie
  fi
fi 2>/dev/null

######################### END SOURCE #############################
