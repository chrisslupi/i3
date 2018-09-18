#!/bin/bash
set -e
#======================================================================================

#======================================================================================

echo "################################################################"
echo "####             Installing reflector                        ###"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S --noconfirm --needed pacman-contrib 


echo "################################################################"
echo "####   finding fastest servers be patient for the world      ###"
echo "################################################################"

# finding the fastest archlinux servers

sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup

sudo rankmirrors -n 6 /etc/pacman.d/mirrorlist.backup > /etc/pacman.d/mirrorlist

echo "################################################################"
echo "####       fastest servers  saved                            ###"
echo "################################################################"



sudo pacman -Syu


echo "################################################################"
echo "###############       mirrorlist updated      ###################"
echo "################################################################"

