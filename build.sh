#!/usr/bin/env sh

jjMux="$HOME/.jjmux"

echo "\n### Bootstrap started ###"

if [ -e $jjMux/.git ]; then
    echo "\n> update repo\n"
    cd $jjMux && git pull
else
    echo "\n> clone repo\n"
    git clone https://github.com/jnardiello/jjMux.git $jjMux

echo "\n> set up symlink\n"
ln -sf $jjMux/tmux.conf $HOME/.tmux.conf
