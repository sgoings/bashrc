# don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=ignoreboth

# Some handy shell options
shell_options="\
  checkhash \
  checkwinsize \
  histappend \
  extglob \
  cdspell \
  dirspell \
  globstar \
  autocd \
"

if ! shopt -qs ${shell_options}; then
  echo "
Warning! Not all shell options were set.
You are probably running an older verison of bash:
$( bash --version )

The following shell options are set:
$( shopt -s )
"
fi

case ${PLATFORM} in
  darwin)
    # Set up bash completion on OSX with brew
    if [[ -f `brew --prefix`/etc/bash_completion ]]; then
      source `brew --prefix`/etc/bash_completion
    fi
    ;;
  *)
    # Completion is critical; this needs to be set up before my aliases file
    if [[ -f /etc/bash_completion ]] && ! shopt -oq posix; then
      source /etc/bash_completion
    fi
    ;;
esac
