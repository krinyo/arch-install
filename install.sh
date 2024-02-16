timedatectl set-ntp true

loadkeys ru
setfont cyr-sun16
cat /sys/firmware/efi/fw_platform_size

fdisk /dev/sda << FDISK_CMDS
g
n
1

+1G
t
1
83
n
2

+2G
n
3


w
FDISK_CMDS


mkfs.fat /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3


mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
swapon /dev/sda2


pacstrap /mnt base base-devel linux linux-firmware dhcpcd openssh


genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
