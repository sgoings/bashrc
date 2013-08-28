# Oh, THE COLORS!
if which dircolors >/dev/null 2>&1; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || \
    eval "$(dircolors -b)"

  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'

  alias grep='grep --color=auto -n'
  alias fgrep='fgrep --color=auto -n'
  alias egrep='egrep --color=auto -n'
fi

# Use custom colors for the ant console output
export ANT_OPTS="-Dant.logger.defaults=${HOME}/.ant_settings"

# Create aliases for color version of optional commands if they both exist
smart-alias svn 'colorsvn'
smart-alias ant 'ant -logger org.apache.tools.ant.listener.AnsiColorLogger'

which brew &> /dev/null && brew_prefix=$( brew --prefix )

# GRC colorizes nifty unix tools all over the place
if $(which grc &>/dev/null); then
  source ${brew_prefix}/etc/grc.bashrc
fi

# vim: set ft=sh ts=2 sw=2 tw=0 :
