# On Linux

## Install

### From an install script


First, you need to install the required packages:

```bash
# for Debian/Ubuntu
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git
sudo apt update && sudo apt install g++ gcc gdb
sudo apt update && sudo apt install make
```
- if your distro not debian/ubuntu, using package manager in this distro you using instead of. zypper, apt, pacman,...
- You need to download g++ standard "17<=" => (make, g++, gcc, gdb, git)
- Second, you paste to your bash, please make sure your file "Non-IDE-RezaxOnes" in home/your-user (=) ~"

```bash
 git clone "https://github.com/RezaxOnes/Non-IDE-RezaxOnes"
 cd Non-IDE-RezaxOnes
 sudo chmod +x script-setup.sh && sudo chmod +x uninstall.sh
 sudo ./script-setup.sh && source ~/.bashrc
```
- Please make sure you have used or script-setup used make in workspace, in Non-IDE-RezaxOnes Directory because it need file compiled NIRO
- Something bug for easy is not have file NIRO because it haven't build
- Once installed, it is a Non-IDE, so you can run code and debug in terminal.
- Please make sure you have used sudo
- Enjoy it! =)

## To uninstall

```bash
cd Non-IDE-RezaxOnes
sudo ./uninstall.sh && source ~/.bashrc
```

- Remember, you need to use sudo 
