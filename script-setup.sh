#!/bin/bash

Green="\033[1;32m"
Red="\033[1;31m"
RESET="\033[0m"
# pfile = project-file
pfile="Non-IDE-RezaxOnes"
# pfile_env = project-file-enviroment
pfile_env="Non-IDE-RezaxOnes_env"
# pfile_env_flag = project-file-enviroment-flag (to check exist)
pfile_env_flag="Non-IDE-RezaxOnes_Flag"

set -Eeuo pipefail
trap 'echo -e "${Red} Khong the thuc hien thao tac do loi khong xac dinh, huy thuc thi script.${RESET}" ' ERR

echo "Hay Chac Chan Rang Ban Dang Chay Lenh Nay Bang \"sudo\""
echo "Script nay RAT NGUY HIEM vi chay bang sudo, vui long CHI nhap dung ten nhung user hop le duoi day (Khong duoc chon root)"
echo "  |"
echo "  V"
ls "/home"
echo "Vui Long Nhap Ten User (Kiem tra o \"ls /home\")"
echo "Ban co the go \"q\", \"quit\", \"exit\" de co the thoat script!"
read -p ">> " user_m

if [[ "$user_m" == "q" || "$user_m" == "quit" || "$user_m" == "exit" ]]; then
echo "Good Bye!"
exit 0 
fi

if [[ "$user_m" == "root" ]]; then
echo "Khong duoc tai o user root"
exit 1
fi

if [[ -d "/home/$user_m/$pfile_env_flag" ]]; then
    echo "Error: File '$pfile_env_flag' Da Ton Tai Nen Huy Thuc Thi Script."
    echo "Lenh nay da huy execute nen se tra ve \"exit 0\"."
    exit 0
fi
# Execute

echo -e "${Green}[-] Copy /home/$user_m/$pfile => /home/$user_m/$pfile_env${RESET}"
sudo cp -r "/home/$user_m/$pfile" "/home/$user_m/$pfile_env"

echo -e "${Green}[-] Dang tao flag o /home/$user_m${RESET}"
sudo mkdir -p "/home/$user_m/$pfile_env_flag"
sudo touch "/home/$user_m/$pfile_env_flag/README.TXT"
printf "Please Don't Remove This Folder Have This File" | sudo tee "/home/$user_m/$pfile_env_flag/README.TXT"
printf "\nChi la script dang hoat dong duong lo lang!\n"
echo -e "${Green}[-] Them lenh viet tat (co the goi la invoke hoac alias) cho $pfile Settings${RESET}"
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-S"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Settings \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-S"

echo -e "${Green}[-] Them lenh viet tat (co the goi la invoke hoac alias) cho $pfile Command${RESET}"
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-C"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Command \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-C"
echo -e "${Green}[-] Them map file cho $pfile ${RESET}"

echo -e "${Green}[-] Them bien user tuyet doi => Non-IDE-Settings${RESET}"
# == USER ==
#  ... <= here. next line under the comment 
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/Non-IDE-Settings"

echo -e "${Green}[-] Them bien user tuyet doi => Non-IDE-Command${RESET}"
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/Non-IDE-Command"

echo -e "${Green}[-] Them bien user tuyet doi => NIRO${RESET}"
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/NIRO"

echo -e "${Green}[-] Dang cap quyen can thiet cho /home/$user_m/$pfile_env va /home/$user_m/$pfile_env_flag${RESET}"
sudo chmod -R 755 "/home/$user_m/$pfile_env"
sudo chmod -R +x "/home/$user_m/$pfile_env"
sudo chown -R $user_m:$user_m "/home/$user_m/$pfile_env"
sudo chmod -R 755 "/home/$user_m/$pfile_env_flag"
sudo chown -R $user_m:$user_m "/home/$user_m/$pfile_env_flag"

echo -e "${Green}[-] Dang them vao bien moi truong ${RESET}"
echo "# Please read — this is custom. Do not touch any code above." >> "/home/$user_m/.bashrc"
echo " export PATH=/home/$user_m/$pfile_env:\$PATH" >> "/home/$user_m/.bashrc" 

# Finished Install
echo -e "${Green}[-] Vui long mo terminal / phien moi hoac dung lenh thu cong \"source .bashrc\"!${RESET}"
echo -e "${Green}[-] Da Cai Dat Thanh Cong! [-]${RESET}"
