#!/bin/sh
export STEAM_DIR="/home/$USER/.local/share/Steam"
echo "STEAMDIR: $STEAM_DIR"
export HOME="/home/$USER"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
mkdir -p /home/$USER/snap/steam/common/.fex-emu/
#export FEX_SERVERSOCKETPATH=/home/mitchell/snap/steam/current/.fex-emu/FEXServer.Socket
export FEX_SERVERSOCKETPATH=/home/$USER/.fex-emu/FEXServer.Socket
export FEX_APP_CONFIG_LOCATION=/snap/steam/current/fex_config/
/snap/steam/current/usr/bin/FEXBash /snap/steam/current/usr/lib/steam/bin_steam.sh -no-cef-sandbox
