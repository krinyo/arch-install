ln -sf /usr/share/zoneinfo/Yekaterinburd/Asia /etc/localtime
hwclock --systohc

pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable dhcpcd.service
systemctl enable sshd.service

passwd
useradd -m -s /bin/bash username
passwd username

echo 'vm-arch' > /etc/hostname

umount -R /mnt
swapoff /dev/sda2
exit
