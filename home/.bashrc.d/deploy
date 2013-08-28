path-append ~/ReadyTalk/deploy

alias deploy='deploy.sh'
make-completion-wrapper _deploy _deploy_alias deploy.sh
complete -F _deploy_alias deploy

alias deployme='deploy.sh $(whoami)'
make-completion-wrapper _deploy _deployme deploy.sh $(whoami)
complete -F _deployme deployme
