#!/bin/bash

Green="\033[1;32m"
Red="\033[1;31m"
RESET="\033[0m"
echo "Vui Long Nhap Ten User (Kiem tra o \"ls /home\")"
read -p ">> " user_m

set -Eeuo pipefail
trap 'echo -e "${Red} Khong the thuc hien thao tac do loi khong xac dinh, huy thuc thi script.${RESET}" ' ERR

# Thuc Thi

echo -e "${Green}[-] Copy Non-IDECPlusPlus => ~/Non-IDEC++-env${RESET}"
sudo cp -r "/home/$user_m/Non-IDECPlusPlus" "/home/$user_m/Non-IDEC++-env"
sudo chmod 755 "/home/$user_m/Non-IDEC++-env"

echo -e "${Green}[-] Dang cap quyen can thiet${RESET}"
sudo chmod +x "/home/$user_m/Non-IDEC++-env/m-run" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/m-debug" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/edit"  && sudo chmod +x "/home/$user_m/Non-IDEC++-env/run" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/debug" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/r" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/mr" && sudo chmod +x "/home/$user_m/Non-IDEC++-env/e"

echo -e "${Green}[-] Dang them vao bien moi truong ${RESET}"
 echo "# Please read — this is custom. Do not touch any code above." >> "/home/$user_m/.bashrc"
 echo " export PATH=/home/$user_m/Non-IDEC++-env:\$PATH" >> "/home/$user_m/.bashrc" 

#Da Cai Dat Thanh Cong
echo -e "${Green}[-] Da Cai Dat Thanh Cong! [-]${RESET}"
