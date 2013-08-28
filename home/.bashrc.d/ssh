# Keep my .ssh stuff private.
chmod 700 ${HOMESICK}/bashrc/home/.ssh

# Work stuff.
alias ssh-proxy='ssh -D 9000 -Nf 1900.readytalk.com 2>/dev/null'

case ${PLATFORM} in
  darwin)
    # Setup ssh stuff.
    if [[ -z $SSH_AUTH_SOCK ]]; then
      ssh-add -K
    else
      echo "SSH agent using key in OSX keychain."
    fi
    ;;
  *)
    # Setup ssh agent.
    if [[ -z $SSH_AUTH_SOCK ]]; then
      source ${HOME}/.ssh/ssh-login
    else
      echo "SSH agent already active from another session or host."
    fi
    ;;
esac

# vim: set ft=sh ts=2 sw=2 tw=0 :
