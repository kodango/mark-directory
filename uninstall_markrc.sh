#!/bin/bash

rm -f ~/.markrc
rm -rf ~/.marks
rm -f ~/.chsdir

sed -i '/markrc/d' ~/.bash_profile 2>/dev/null
sed -i '/markrc/d' ~/.bashrc 2>/dev/null

echo "Uninstall successfully, please re-login the terminal to take effect"
