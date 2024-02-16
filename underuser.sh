echo "i3" >> .xinitrc

echo "if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi" >> .bash_profile