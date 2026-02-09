#!/bin/bash

Green="\033[1;32m"
Red="\033[1;31m"
RESET="\033[0m"
# pfile = project-file
pfile="Non-IDE-RezaxOnes"
# pfile_env = project-file-enviroment
pfile_env="Non-IDE-RezaxOnes_env"

set -Eeuo pipefail
trap 'echo -e "${Red} Khong the thuc hien thao tac do loi khong xac dinh, huy thuc thi script.${RESET}" ' ERR
echo "Script nay RAT NGUY HIEM khi chay duoi dang sudo, vui long PHAI nhap dung ten mot trong nhung user hop le duoi day (Khong duoc chon root va user do phai la nguoi cai $pfile)"
echo "  |"
echo "  V"
ls "/home"
echo "Vui Long Nhap Ten User (Kiem tra o \"ls /home\")"
read -p ">> " user_m

if [[ "$user_m" == "q" || "$user_m" == "quit" || "$user_m" == "exit" ]]; then
echo "Good Bye!"
exit 0 
fi

if [[ ! -d "/home/$user_m" ]]; then
  echo -e "${Red}User Khong Ton Tai Trong \"/home\"${RESET}"
  exit 1
fi

if [[ "$user_m" == "root" ]]; then
  echo -e "${Red}Khong duoc dung user root${RESET}"
  exit 1
fi

# Execute

echo -e "${Green}[-] Dang go cai dat${RESET}"
echo -e "${Green}[-] Dang bat dau xoa de quy thu muc${RESET}"
echo -e "${Green}[-] Bat dau xoa thu muc $pfile_env ${RESET}"
sudo rm -rf "/home/$user_m/$pfile_env"
echo -e "${Green}[-] Dang xoa moi truong${RESET}"
sed -i "\|^[[:space:]]*export PATH=/home/$user_m/$pfile_env:\$PATH|d" "/home/$user_m/.bashrc"
sed -i '/^# Please read — this is custom. Do not touch any code above./d' "/home/$user_m/.bashrc"

# Finished Uninstall
echo -e "${Green}[-] Da go cai dat thanh cong [-]${RESET}"
