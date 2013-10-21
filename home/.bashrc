# Set some super basic stuff
export PATH="${HOME}/bin:${PATH}"
export EDITOR="vim"
export VISUAL="${EDITOR}"
export LANG=en_US.UTF-8

# ${HOME}/.bashrc: executed by bash(1) for non-login shells.  If not running
# interactively, don't do anything
[ -z "${PS1}" ] && return

if [[ ${OS} =~ Windows ]]; then
  uname_flag='-o'
else
  uname_flag='-s'
fi

export PLATFORM=$(uname ${uname_flag} | tr "[:upper:]" "[:lower:]")

# Use ^X instead of ^S to stop control flow so I can reclaim ^S for forward
# common history search
stty -ixon
stty stop ^X

# Setup homesick stuff.
export HOMESICK="${HOME}/.homesick/repos"

homeshick="${HOME}/.homeshick"
[[ -x ${homeshick} ]] && alias homesick=${homeshick}

# Source platform dependent stuff first to help with paths, etc.
source ${HOME}/.bash_functions
source ${HOME}/.bash_${PLATFORM}

# Source the rest of the things.
if [[ -d ${HOME}/.bashrc.d ]]; then
  files=$(find ${HOME}/.bashrc.d/ -type f -o -type l)
  for file in ${files}; do
    source "${file}"
  done
fi

