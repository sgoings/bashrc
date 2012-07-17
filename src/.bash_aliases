alias sag='sudo apt-get'
alias svn='colorsvn'
alias service='sudo service'
alias ant='ant -logger org.apache.tools.ant.listener.AnsiColorLogger'

alias g='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gb='git branch'
alias gd='git diff'
alias gcp='git cherry-pick'

complete -o default -o nospace -F _git_status g
complete -o default -o nospace -F _git_checkout gco
complete -o default -o nospace -F _git_fetch gf
complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_diff gd
complete -o default -o nospace -F _git_cherry_pick gcp

function dup () {
  local path=$1
  local new=$2

  cp "${path}" $(dirname ${path})/${new}
}