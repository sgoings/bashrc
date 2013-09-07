homesick_repos="$HOME/.homesick/repos"
homeshick_path="${homesick_repos}/homeshick"

if [[ ! -d ${homeshick_path} ]]; then
  git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
fi

bashrc_repo="sgoings/bashrc"
echo "Which homeshick based bashrc would you like to load? (${bashrc_repo})"
read input
[[ -n "${input}" ]] && bashrc_repo="${input}"

if [[ ! -d "${homesick_repos}/$(basename ${bashrc_repo})" ]]; then
  "${homeshick_path}/home/.homeshick" clone ${bashrc_repo}
fi
