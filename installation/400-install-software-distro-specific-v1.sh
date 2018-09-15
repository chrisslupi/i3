#!/bin/bash
###################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo "################################################################"
echo "#########   distro specific software installed  ################"
echo "################################################################"

#Fonts

## sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed conflicts with ttf-google-fonts
## sudo pacman -S ttf-droid --noconfirm --noconfirm --needed  conflicts with ttf-google-fonts
## sudo pacman -S ttf-inconsolata --noconfirm --needed        conflicts with ttf-google-fonts
sudo pacman -S noto-fonts --noconfirm --needed

#file manager

sudo pacman -S nemo --noconfirm --needed


#Fonts

sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed

#Utilities
sudo pacman -S pamac --noconfirm --needed 
sudo pacman -S notify-osd  --noconfirm --needed
sudo pacman -S lxappearance --noconfirm --needed
sudo pacman -S feh --noconfirm --needed
sudo pacman -S arandr --noconfirm --needed
sudo pacman -S qt4 --confirm --needed
sudo pacman -S xorg-xrandr --noconfirm --needed
sudo pacman -S gvfs  --noconfirm --needed
sudo pacman -S compton  --noconfirm --needed
sudo pacman -S volumeicon  --noconfirm --needed
#sudo yay -S arandr  --noconfirm
#run with systemadm
#sudo yay -S systemd-ui  --noconfirm



        # S Y S T E M  T O O L S # 

# steering spotify from the keyboard G15 Logitech - volume and next/previous/stop/pause

echo "################################################################"
echo "playerctl"
echo "################################################################"

package="playerctl"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm --noedit  $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi





echo "################################################################"
echo "trayicon for sound for bluetooth headphone"
echo "################################################################"


package="pasystray-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm   $package

	elif pacman -Qi pacaur &> /dev/null; then
		
		echo "Installing with pacaur"
		pacaur -S --noconfirm --noedit  $package
		 	
	elif pacman -Qi yaourt &> /dev/null; then

		echo "Installing with yaourt"
		yaourt -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	echo "To install pasytray, go to tmp file and run from there"
	echo "sudo pacman -U /tmp/yaybuild-1000/pasystray-git/pasystray-git/pasystray-git-0.6.0.r13.gccb5b6e-1-x86_64.pkg.tar.xz"
	echo "Trying to run the git version"
	sudo pacman -U /tmp/yaybuild-1000/pasystray-git/pasystray-git/pasystray-git*  --needed --noconfirm
	fi

fi




###############################################################

##############################################
###############################################################################################

echo "################################################################"
echo "#########   distro specific software installed  ################"
echo "################################################################"