#!/bin/sh
mkdir -p /home/$USER/snap/steam/common/.fex-emu/
mkdir -p /home/$USER/.fex-emu/
#export FEX_SERVERSOCKETPATH=/home/mitchell/snap/steam/current/.fex-emu/FEXServer.Socket
export FEX_SERVERSOCKETPATH=/home/$USER/.fex-emu/FEXServer.Socket
export FEX_APP_CONFIG_LOCATION=/snap/steam/current/fex_config/

/snap/steam/current/usr/bin/FEXBash /snap/steam/current/bin/desktop-launch
