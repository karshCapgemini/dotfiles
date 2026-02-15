#!/usr/bin/env bash

clear

# information to display
STORAGE=$(df -h | grep "C:" | head -n 1 | awk '{print $3"/"$2" ("$5")"}')
MEMORY=$(free -m | awk '/^Mem:/ { printf "%sM/%sM (%d%%)\n", $3, $2, int(($3/$2)*100 + 0.5) }')
PACKAGES=$(dpkg -l | wc -l)

# Uptime
if [ $(uptime -p | wc -w) == '3' ]; then
	UPTIME=$(uptime -p | awk '{print $2,"mins"}')
else
	UPTIME=$(uptime -p | awk '{print $2":"$4""}')
fi

echo ""
echo -e "\e[37m░░╚══╗░╔═╔════╝  \e[31m $(uname -r)"
echo -e "\e[37m╚═╦═╗╠═╩═╩╗╔═╦═╗ \e[35m Uptime......: \e[1;35m$UPTIME"
echo -e "\e[37m░░║▒╠╣▒▒▒▒╠╣▒║▒║ \e[33m Packages:...: \e[1;33m$PACKAGES"
echo -e "\e[37m╔═╩═╝╠═╦═╦╝╚═╩═╝ \e[34m Disk........: \e[1;34m$STORAGE"
echo -e "\e[37m░░╔══╝░╚═╚════╗  \e[32m Memory......: \e[1;32m$MEMORY"

