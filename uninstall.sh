#!/bin/bash

#            ---------------------------------------------------
#                              Ghost Framework                                                  
#            ---------------------------------------------------
#                Copyright (C) <2019-2020>  <Entynetproject>
#
#        This program is free software: you can redistribute it and/or modify
#        it under the terms of the GNU General Public License as published by
#        the Free Software Foundation, either version 3 of the License, or
#        any later version.
#
#        This program is distributed in the hope that it will be useful,
#        but WITHOUT ANY WARRANTY; without even the implied warranty of
#        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#        GNU General Public License for more details.
#
#        You should have received a copy of the GNU General Public License
#        along with this program.  If not, see <http://www.gnu.org/licenses/>.

RS="\033[1;31m"
CE="\033[0m"

#blue start 
	BS="\033[1;34m"
#color end
	CE="\033[0m"
#red start
	RS="\033[1;31m"
#green start
	GN="\033[1;32m"
#white start
   WHS="\033[0m"

printf '\033]2;uninstall.sh\a'

if [[ $EUID -ne 0 ]]
then
   echo -e ""$RS"[-]"$CE" This script must be run as root!"$CE""
   exit
fi

{
rm /bin/ghost
rm /usr/local/bin/ghost
rm -rf ~/ghost
rm /etc/ghost.conf
rm /data/data/com.termux/files/usr/bin/ghost
} &> /dev/null
