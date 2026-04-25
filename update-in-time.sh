#!/bin/bash


# pfile = project-file
pfile="Non-IDE-RezaxOnes"
# pfile_env = project-file-enviroment
pfile_env="Non-IDE-RezaxOnes_env"

# == USER ==





# === My Eyes =(( ===
UIT_yes() {
   while IFS= read -r line || [ -n "$line" ]; do
     if [[ "$line" == \#* || "$line" == "/home/$user_m/" || -z "$line" ]]; then
      continue
     fi
     if [[ "$line" == "/" ]]; then
      echo "Never Let Bro Config Again!"
      continue
     fi
    rm -rf -- "/home/$user_m/$pfile_env/$line"
   done < "/home/$user_m/$pfile_env/NIRO_map_file.txt"
   rm -f "/home/$user_m/$pfile_env/NIRO_map_file.txt"
   # === git pull ===
   git -C "/home/$user_m/$pfile" pull
   # === Recopy ===
    while IFS= read -r line2 || [ -n "$line2" ]; do
    if [[ "$line2" == \#* || "$line2" == "/home/$user_m/" || -z "$line2" ]]; then
     continue
    fi
    if [[ "$line2" == "/" ]]; then
     echo "Never Let Bro Config Again!"
     continue
    fi
    cp -r "/home/$user_m/$pfile/$line2" "/home/$user_m/$pfile_env/"
   done < "/home/$user_m/$pfile/NIRO_map_file.txt"
    cp "/home/$user_m/$pfile/NIRO_map_file.txt" "/home/$user_m/$pfile_env/"
}

UIT_setup() {
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-S"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Settings \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-S"
printf "\n" | sudo tee -a "/home/$user_m/$pfile_env/NIRO-C"
echo "exec /home/$user_m/$pfile_env/Non-IDE-Command \"\$@\"" >> "/home/$user_m/$pfile_env/NIRO-C"



# == USER ==
#  ... <= here. next line under the comment 
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/Non-IDE-Settings"
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/Non-IDE-Command"
sed -i "/^# == USER ==/{a\
 user_m=\"$user_m\"
}" "/home/$user_m/$pfile_env/NIRO"

sudo chmod -R 755 "/home/$user_m/$pfile_env"
sudo chmod -R +x "/home/$user_m/$pfile_env"
sudo chown -R $user_m:$user_m "/home/$user_m/$pfile_env"
}
# === End ===


UIT_yes
UIT_setup

# am i done now???
mkdir -p "/home/$user_m/$pfile/temp"
touch "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "" | tee "/home/$user_m/$pfile/temp/remove-user-UIT.sh"

printf '#!/bin/bash\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf '# pfile = project-file\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "pfile=\"$pfile\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 
printf '# pfile_env = project-file-enviroment\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "pfile_env=\"$pfile_env\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 
printf '# == USER ==\n' | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "user_m=\"$user_m\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh"
printf "sed -i \"/^# == USER ==/{n;d}\" \"/home/$user_m/$pfile/update-in-time.sh\"\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 
printf "exit 0\n" | tee -a "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 

echo "Lenh nay can sudo!"
sudo chmod 755 "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 
sudo chmod +x "/home/$user_m/$pfile/temp/remove-user-UIT.sh" 

/home/$user_m/$pfile/temp/remove-user-UIT.sh
exit 0