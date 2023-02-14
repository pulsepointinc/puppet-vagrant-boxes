# Installing the virtualbox guest additions
VBOX_VERSION=6.1.34
cd /tmp
wget http://download.virtualbox.org/virtualbox/${VBOX_VERSION}/VBoxGuestAdditions_${VBOX_VERSION}.iso
mount -o loop /tmp/VBoxGuestAdditions_${VBOX_VERSION}.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf /tmp/VBoxGuestAdditions_*.iso

