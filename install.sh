#!/bin/bash

#script dir params
installto="$HOME/.dotfiles"
dname=`dirname $0`
fdir="`pwd`/${dname:2}"

function bashrc() {
	if [ -f $HOME/.bashrc ]; then
        mv $HOME/.bashrc $HOME/.bashrc_bkp
	fi
	ln -s $fdir/bashrc.sh $HOME/.bashrc
}

function bashprofile() {
	if [ -f $HOME/.bash_profile ]; then
        mv $HOME/.bash_profile $HOME/.bash_profile_bkp
	fi
	ln -s $fdir/bash_profile.sh $HOME/.bash_profile
}

function bashfiles() {
	if [ -f $HOME/.bashfiles ]; then
        mv $HOME/.bashfiles $HOME/.bashfiles_bkp
	fi
	ln -s $fdir/bashfiles $HOME/.bashfiles
}

function bindir() {
	if [ -f $HOME/.bin ]; then
        # echo "found bin" 
	    mv $HOME/.bin $HOME/.bin_bkp
	fi
	ln -s $fdir/bin $HOME/.bin
}



echo
echo "######################################################################"
echo "##                                                                  ##"
echo "## dotfiles installer.                                              ##"
echo "## --------------------                                             ##"
echo "##                                                                  ##"
echo "##  this installer will create simlinks at \`\$HOME\` dir              ##"
echo "##   for \`.bashrc\`, \`.bash_profiles\`, \`.bashfiles\` and \`.bin\`       ##"
echo "##   existing file(s) will be postfix with \`_bkp\`.                  ##"
echo "##                                                                  ##"
echo "######################################################################"
echo 

#prompt msg
read -p "    Accept to Resume Installation [y|n]: " q1
if [ $q1 = "y" ]; then

    echo "    Installing Started..."
    bindir;      echo "      ✔ bin"
    bashrc;      echo "      ✔ bashrc"
    bashprofile; echo "      ✔ bash_profile"
    bashfiles;   echo "      ✔ bashfiles"

    echo "    Installation Complete"
    echo "     start a new session to take effect"
else
    echo "  Instation Canceled."
fi
echo 