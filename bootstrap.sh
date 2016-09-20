#!/bin/bash
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME

# DOWNLOADS
ln -s ~/Downloads ~/downloads

# PIP (ROOT)
if [ ! -d "~/.venv/bin2" ]; then
    /usr/bin/virtualenv2 -q ~/.venv/bin2 --no-site-packages
fi

#if [ ! -f "$BASEDIR/ve/updated" -o $BASEDIR/requirements.pip -nt $BASEDIR/ve/updated ]; then
#    pip install -r $BASEDIR/requirements.pip -E $BASEDIR/ve
#    touch $BASEDIR/ve/updated
#    echo "Requirements installed."
#fi

source ~/.venv/bin2/bin/activate
pip install \
    trash \
    envdir \
    virtualenvwrapper \
    mu-repo \
    #autoenv \
    #

# Autoenv
git clone https://github.com/kennethreitz/autoenv ~/.autoenv

# PIP (USER)
#pip install --user git+git://github.com/Lokaltog/powerline
#pip install --user pep8

# GEMs
#sudo gem install curses homesick cheat

# NODE
sudo npm install -g gh

## FASD
git clone https://github.com/clvv/fasd.git
cd fasd
PREFIX=$HOME make install
cd ..
rm -rf fasd

# CREATE_AP
git clone https://github.com/oblique/create_ap.git $HOME/bin/create_ap

# GITFLOW
wget -c https://raw.github.com/nvie/gitflow/develop/contrib/gitflow-installer.sh
chmod +x gitflow-installer.sh
INSTALL_PREFIX=~/bin ./gitflow-installer.sh
rm gitflow-installer.sh
rm -rf gitflow

# VLSUB
mkdir -p ~/.local/share/vlc/lua/extensions/
wget https://raw.githubusercontent.com/exebetche/vlsub/master/vlsub.lua -O ~/.local/share/vlc/lua/extensions/vlsub.lua

# CORTEX
#wget https://raw.githubusercontent.com/GGLucas/cortex/master/cortex -O ~/bin/cortex
#chmod 755 ~/bin/cortex

# RTORRENT
mkdir -p ~/Downloads/torrents/.rtorrent/session
mkdir -p ~/Downloads/torrents/watch
mkdir -p ~/Downloads/torrents/incomplete
mkdir -p ~/Downloads/torrents/complete

# FIREFOX
#wget -P ~/Downloads https://addons.mozilla.org/firefox/downloads/file/243918/vimperator-3.8.2-fx.xpi
#wget -P ~/Downloads https://download.zotero.org/extension/zotero-4.0.22.xpi
#wget -P ~/Downloads https://zotplus.github.io/better-bibtex/zotero-better-bibtex-0.6.50.xpi
#wget -P ~/Downloads https://download.xmarks.com/download/binary/firefox
#mv ~/Downloads/firefox ~/Downloads/xmarks.xpi

#firefox -install-global-extension ~/Downloads/vimperator-3.8.2-fx.xpi
#firefox -install-global-extension ~/Downloads/zotero-4.0.22.xpi
#firefox -install-global-extension ~/Downloads/zotero-better-bibtex-0.6.50.xpi
#firefox -install-global-extension ~/Downloads/xmarks.xpi
