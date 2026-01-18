#!/bin/bash

Green="\033[1;32m"
Red="\033[1;31m"
RESET="\033[0m"
echo "Vui Long Nhap Ten User (Kiem tra o \"ls /home\")"
read -p ">> " user_m

set -Eeuo pipefail
trap 'echo -e "${Red} Khong the thuc hien thao tac do loi khong xac dinh, huy thuc thi script.${RESET}" ' ERR

# Thuc thi

echo -e "${Green}[-] Dang go cai dat${RESET}"
echo -e "${Green}[-] Dang xoa de quy thu muc${RESET}"
echo -e "${Green}[-] Dang xoa thu muc Non-IDEC++-env${RESET}"
sudo rm -rf "/home/$user_m/Non-IDEC++-env"
echo -e "${Green}[-] Dang xoa moi truong${RESET}"
sed -i '/# Please read — this is custom. Do not touch any code above./d' "/home/$user_m/.bashrc"
sed -i '/ export PATH=\/home\/'"$user_m"'\/Non-IDEC++-env:\$PATH/d' "/home/$user_m/.bashrc"

echo -e "${Green}[-] Da go cai dat thanh cong [-]${RESET}"
