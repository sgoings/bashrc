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

function make-completion-wrapper () {
  local function_name="$2"
  local arg_count=$(($#-3))
  local comp_function_name="$1"
  shift 2
  local function="
  function $function_name {
    ((COMP_CWORD+=$arg_count))
    COMP_WORDS=( "$@" \${COMP_WORDS[@]:1} )
    "$comp_function_name"
    return 0
  }"
  eval "$function"
}

function jarls {
  jar tvf ${1}
}

function tarls {
  tar tvzf ${1} | tarcolor
}
