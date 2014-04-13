#!/bin/bash

cp markrc ~/.markrc

# If os is Mac OSX, create .bash_profile if not exist
if [ "$(uname)" = "Darwin" ]; then
    touch ~/.bash_profile
fi

if [ -f ~/.bash_profile ]; then
    if ! grep -sq markrc ~/.bash_profile; then
        echo '[ -f ~/.markrc ] && source ~/.markrc' >> ~/.bash_profile
    fi
fi

if [ -f ~/.bashrc ]; then
    if ! grep -sq markrc ~/.bashrc; then
        echo '[ -f ~/.markrc ] && source ~/.markrc' >> ~/.bashrc
    fi
fi

# Install chsdir script
cp chsdir ~/.chsdir && chmod +x ~/.chsdir

echo "Install successfully, please re-login the terminal, or just run 'source ~/.markrc' to start"
