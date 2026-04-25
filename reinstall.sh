#!/bin/bash

# pfile = project-file
pfile="Non-IDE-RezaxOnes"
# pfile_env = project-file-enviroment
pfile_env="Non-IDE-RezaxOnes_env"

# == USER ==





git -C "/home/$user_m/$pfile" pull
sudo /home/$user_m/$pfile/uninstall.sh
sudo /home/$user_m/$pfile/script-setup.sh

# am i done now???
mkdir -p "/home/$user_m/$pfile/temp"
touch "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "" | tee "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"

printf '#!/bin/bash\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf '# pfile = project-file\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "pfile=\"$pfile\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 
printf '# pfile_env = project-file-enviroment\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "pfile_env=\"$pfile_env\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 
printf '# == USER ==\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "user_m=\"$user_m\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh"
printf "sed -i \"/^# == USER ==/{n;d}\" \"/home/$user_m/$pfile/reinstall.sh\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 
printf "exit 0\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 

echo "Lenh nay can sudo!"
sudo chmod 755 "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 
sudo chmod +x "/home/$user_m/$pfile/temp/remove-user-reinstall.sh" 

/home/$user_m/$pfile/temp/remove-user-reinstall.sh
exit 0