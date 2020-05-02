_evalcache fd . $HOME/.asdf/shims -X echo '{/}' 2>/dev/null
lazyload asdf \
  "$(< ${ZSH_EVALCACHE_DIR:-${HOME}/.zsh-evalcache}/init-fd.sh)" \
  -- 'source /opt/asdf-vm/asdf.sh'
