function color_prompt {
  [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null
  return ${?}
}

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

if color_prompt; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(smart_unalias git; __git_ps1 2>/dev/null)\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(smart_unalias git; __git_ps1 2>/dev/null)\$ '
fi
unset color_prompt

# If this is an xterm set the title to user@host:dir
case "${TERM}" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]${PS1}"
    ;;
  *)
    ;;
esac
