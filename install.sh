## Install.sh
# This will install the links to the bashprofile

# Backup existing bash profile if exist

if [ ! -d ~/.oldbashprofile ] && ([ -f ~/.bashrc ] || [ -f ~/.bash_profile ] || [ -d ~/.dotfiles ]); then
	mkdir ~/.oldbashprofile
fi

if [ -f ~/.bashrc ]; then mv ~/.bashrc ~/.oldbashprofile/.bashrc; fi
if [ -f ~/.bash_profile ]; then	mv ~/.bash_profile ~/.oldbashprofile/.bash_profile; fi
if [ -d ~/.dotfiles ]; then mv ~/.dotfiles ~/.oldbashprofile/.dotfiles; fi

# Create localdotfiles directory if missing
if [ -f ~/.localdotfiles ]; then mkdir ~/.localdotfiles; fi

# Create links
ln -s ~/.bashprofile/.bashrc ~/.bashrc
ln -s ~/.bashprofile/.bash_profile ~/.bash_profile
ln -s ~/.bashprofile/.dotfiles ~/.dotfiles
