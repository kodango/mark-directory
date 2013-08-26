#!/bin/bash

cp markrc ~/.markrc

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

echo "Install successfully, please re-login the terminal, or just run 'source ~/.markrc' to start"
