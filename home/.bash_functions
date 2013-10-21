function smart-alias {
  # Alias a command with a replacement only if both exist.
  local cmd=${1}
  shift
  local replacement=${@}

  if which ${cmd} &>/dev/null && which ${replacement%% *} &>/dev/null; then
    alias ${cmd}="${replacement}"
  fi
}

function smart_unalias {
  alias_cmd=${1}
  alias | grep -q "${alias_cmd}=" && unalias ${1};
}
