case ${PLATFORM} in
  darwin)
    function updateplatform {
      # Update all teh OSX things.
      sudo softwareupdate -i -a
      if which brew &> /dev/null; then
        brew update
        brew upgrade
        brew cleanup
      fi
      which npm &> /dev/null && npm update npm -g && npm update -g
      which gem &> /dev/null && sudo gem update
    }
    ;;
  linux)
    function updateplatform {
      # Update all teh Linux things.
      which apt-get &>/dev/null && sudo apt-get update && sudo apt-get upgrade
      which yum &> /dev/null && sudo yum update && sudo yum upgrade
      which npm &> /dev/null && npm update npm -g && npm update -g
      which gem &> /dev/null && sudo gem update
    }
    ;;
  *)
    function updateplatform {
      echo " I don't know how to update all teh things on this platform (${PLATFORM})."
    }
    ;;
esac

function updatehome {
  # Here is the stuff you will want to modify if you are not @dougborg:
  homesickrepolist="dougborg/bashrc \
                    dougborg/vimrc"

  dirlist="${HOME}/.ssh \
               ${HOME}/.vim \
               ${HOME}/bin"

  # Use homeshick to keep my dotfiles up-to-date.
  local homesick=${HOME}/.homeshick

  # Initialize homesick if needed.
  if [[ ! -x ${homesick} ]]; then
    git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
    homesick="$HOME/.homesick/repos/homeshick/home/.homeshick"
    for dir in ${dirlist}; do mkdir ${dir}; done
    for repo in ${homesickrepolist}; do ${homesick} clone ${repo}; done
  fi

  # Update homesick repos.
  ${homesick} pull && ${homesick} symlink
  source ${HOME}/.bashrc
  ( cd ${HOME}/.vim; make install )
}

function update {
  updateplatform
  updatehome
}

function ssh-init-home {
  local target=${1}

  ssh-copy-id ${target}
  ssh -At ${target} "$(declare -f updatehome); updatehome; bash -l"
}

# vim: set ft=sh ts=2 sw=2 tw=0 :
