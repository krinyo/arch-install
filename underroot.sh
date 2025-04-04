#set-vmvideo arch -horizontalresolution:1920 -verticalresolution:1080 -resolutiontype single

pacman -S xorg-xinit xorg-server i3 awk coreutils i3lock imagemagick util-linux git gnome-screenshot maim scrot wmctrl polybar picom i3-gaps chromium feh

#useradd -m -s /bin/bash username
#passwd username

#sudo mkdir -p /etc/systemd/system/getty@tty1.service.d/
#sudo nano /etc/systemd/system/getty@tty1.service.d/override.conf

#[Service]
#ExecStart=
#ExecStart=-/sbin/agetty --autologin username --noclear %I $TERM
#sudo systemctl daemon-reload
