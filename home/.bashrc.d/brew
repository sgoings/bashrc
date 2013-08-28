if [[ "${PLATFORM}" == "darwin" ]]; then
  brew_installed=${HOME}/.brew_installed

  # Use GNU userland.
  path-prepend /usr/local/opt/coreutils/libexec/gnubin
  path-prepend /usr/local/opt/coreutils/libexec/gnuman MANPATH

  # Stuff for brew.
  path-prepend /usr/local/bin
  path-append /usr/local/sbin
  path-append /usr/local/share/python

  function brew {
    # Create a wrapper for brew that keeps a list of installed brew packages up to
    # date.
    if $(which brew) ${@}; then
      case ${1} in
        install)
          cat <($(which brew) list) ${brew_installed} | \
            sort | uniq > ${brew_installed}
          ;;
        remove|rm|uninstall)
          shift
          for package in ${@}; do
            command grep -v "${package}" ${brew_installed} > temp && \
              mv temp ${brew_installed}
          done
          ;;
      esac
    fi
  }

  function sync-brew {
    brew install $(cat ${brew_installed})
  }
fi

# vim: set ft=sh ts=2 sw=2 tw=0 :
# sublime: syntax Packages/ShellScript/Shell-Unix-Generic.tmLanguage
