#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color
 Check if user is root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   sleep 5
   sudo "$0" "$@"
   exit 1
fi


echo "Running as root..."
sleep .5
clear


cd /root/
service passwall stop
rm owo.sh
wget -q https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/owo.sh

chmod 777 owo.sh

echo -e "${GREEN} Update Complated ! ${ENDCOLOR}"
