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
echo "Script nay RAT NGUY HIEM neu chay duoi dang sudo, vui long CHI nhap dung ten nhung user hop le duoi day (Khong duoc chon root)"
echo "  |"
echo "  V"
ls "/home"
echo "Vui Long Nhap Ten User (Kiem tra o \"ls /home\")"
read -p ">> " user_m

if [[ "$user_m" == "q" || "$user_m" == "quit" || "$user_m" == "exit" ]]; then
echo "Good Bye!"
exit 0 
fi

# Execute

echo -e "${Green}[-] Copy /home/$user_m/$pfile => /home/$user_m/$pfile_env${RESET}"
sudo cp -r "/home/$user_m/$pfile" "/home/$user_m/$pfile_env"

echo -e "${Green}[-] Them lenh viet tat (co the goi la invoke hoac alias) cho $pfile Settings${RESET}"
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-S"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Settings \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-S"

echo -e "${Green}[-] Them lenh viet tat (co the goi la invoke hoac alias) cho $pfile Command${RESET}"
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-C"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Command \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-C"

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

echo -e "${Green}[-] Dang cap quyen can thiet cho /home/$user_m/$pfile_env${RESET}"
sudo chmod -R 755 "/home/$user_m/$pfile_env"
sudo chmod -R +x "/home/$user_m/$pfile_env"
sudo chown -R $user_m:$user_m "/home/$user_m/$pfile_env"

echo -e "${Green}[-] Dang them vao bien moi truong ${RESET}"
echo "# Please read — this is custom. Do not touch any code above." >> "/home/$user_m/.bashrc"
echo " export PATH=/home/$user_m/$pfile_env:\$PATH" >> "/home/$user_m/.bashrc" 

# Finished Install
echo -e "${Green}[-] Vui long mo terminal / phien moi hoac dung lenh thu cong \"source .bashrc\"!${RESET}"
echo -e "${Green}[-] Da Cai Dat Thanh Cong! [-]${RESET}"
