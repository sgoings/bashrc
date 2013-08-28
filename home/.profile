# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# This file should most likely NOT get evaluated, but just in case...
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bash_profile" ]; then
      . "$HOME/.bash_profile"
    fi
fi
