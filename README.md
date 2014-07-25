bashrc
======

My personal bash configurations. These dotfiles are set up to be linked in with Homesick.

Installing
----------

    wget -qO- https://raw.github.com/sgoings/bashrc/master/setup.sh | bash
    source ~/.bashrc

Gives:

    sgoings@mybox:~$ wget -qO- https://raw.github.com/sgoings/bashrc/master/setup.sh | bash
    Cloning into '/home/sgoings/.homesick/repos/homeshick'...
    remote: Reusing existing pack: 1521, done.
    remote: Total 1521 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (1521/1521), 305.16 KiB | 0 bytes/s, done.
    Resolving deltas: 100% (751/751), done.
    Checking connectivity... done.
            clone https://github.com/sgoings/bashrc.git
          updates The castle bashrc has new files.
         symlink? [yN] y
        identical .dircolors
        identical .bashrc.d
        identical .bashrc.d/vagrant
        identical .bashrc.d/rbenv
        identical .bashrc.d/prompt
        identical .bashrc.d/colors
        identical .bashrc.d/rvm
        identical .bashrc.d/bash
        identical .bashrc.d/git
        identical .bashrc.d/ssh
        identical .bashrc.d/aliases
        identical .bash_functions
        identical .bash_profile
        identical .bashrc
        identical .gitignore
        identical .profile
        identical .gitconfig
        identical .ssh
        identical .ssh/config
        identical .ssh/.gitignore
        identical .ssh/ssh-login
        identical .bash_linux

    sgoings@mybox:~$ source ~/.bashrc
    Cloning into '/home/sgoings/.rbenv'...
    remote: Reusing existing pack: 1889, done.
    remote: Total 1889 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (1889/1889), 297.15 KiB | 0 bytes/s, done.
    Resolving deltas: 100% (1182/1182), done.
    Checking connectivity... done.
    Cloning into '/home/sgoings/.rbenv/plugins/ruby-build'...
    remote: Reusing existing pack: 3548, done.
    remote: Total 3548 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (3548/3548), 601.72 KiB | 669.00 KiB/s, done.
    Resolving deltas: 100% (1709/1709), done.
    Checking connectivity... done.
    Cloning into '/home/sgoings/.rbenv/plugins/bundler'...
    remote: Reusing existing pack: 461, done.
    remote: Total 461 (delta 0), reused 0 (delta 0)
    Receiving objects: 100% (461/461), 83.70 KiB | 0 bytes/s, done.
    Resolving deltas: 100% (166/166), done.
    Checking connectivity... done.
    Initialising new SSH agent...
