# default programs
export EDITOR=nvim
export TERMINAL=st
export BROWSER=brave

export QT_PLUGIN_PATH=/usr/lib/qt/plugins
export QT_QPA_PLATFORMTHEME=gtk2
export GPG_TTY=$TTY
export ST_PATH=$HOME

# extras
export PATH="${PATH}:$HOME/.local/bin"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export NVM_DIR=$XDG_DATA_HOME/nvm
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GOPATH=$XDG_DATA_HOME/go
export CARGO_HOME=$XDG_DATA_HOME/cargo
export RXVT_SOCKET=$XDG_RUNTIME_DIR/urxvtd
export NUGET_PACKAGES=$XDG_CACHE_HOME/NuGetPackages
export CUDA_CACHE_PATH=$XDG_CACHE_HOME/nv
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export XAUTHORITY=$HOME/.Xauthority
export MBSYNCRC="${XDG_CONFIG_HOME:-$HOME/.config}/mbsync/config"
export ELECTRUMDIR=$XDG_DATA_HOME/electrum
export WGETRC=$XDG_CONFIG_HOME/wgetrc

#!/bin/bash
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  startx $XDG_CONFIG_HOME/X11/xinitrc
fi
