homesick_repos="$HOME/.homesick/repos"
homeshick_path="${homesick_repos}/homeshick"
bashrc_repo="sgoings/bashrc"

if [[ ! -d ${homeshick_path} ]]; then
  git clone git://github.com/andsens/homeshick.git $HOME/.homesick/repos/homeshick
fi

if [[ ! -d "${homesick_repos}/$(basename ${bashrc_repo})" ]]; then
  source ${homeshick_path}/homeshick.sh
  yes | homeshick clone ${bashrc_repo}
fi
