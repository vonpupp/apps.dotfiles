#!/bin/sh
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME

# PIP (ROOT)
sudo pip install \
    envdir \
    virtualenvwrapper \
    autoenv \
    #

# PIP (USER)
#pip install --user git+git://github.com/Lokaltog/powerline
#pip install --user pep8

# GEMs
#sudo gem install curses homesick cheat

# NODE
sudo npm install -g gh

## FASD
#git clone https://github.com/clvv/fasd.git
#cd fasd
#PREFIX=$HOME make install
#cd ..
#rm -rf fasd

# CREATE_AP
git clone https://github.com/oblique/create_ap.git ./bin/create_ap

# GITFLOW
wget -c https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
chmod +x gitflow-installer.sh
INSTALL_PREFIX=~/bin ./gitflow-installer.sh
rm gitflow-installer.sh
