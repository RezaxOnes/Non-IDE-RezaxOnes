# On Linux

## Install

### From an install script


First, you need to install the required packages:

```bash
# for Debian/Ubuntu
sudo add-apt-repository ppa:git-core/ppa
sudo apt update && sudo apt install git
```
Second, you paste to your bash, please make sure your file "Non-IDECPlusPlus" in home/your-user (=) ~"

```bash
 git clone https://github.com/RezaxOnes/Non-IDECPlusPlus
 cd Non-IDECPlusPlus
 sudo chmod +x script-setup.sh && sudo chmod +x uninstall.sh
 sudo ./script-setup.sh && source ~/.bashrc
```
- Once installed, it is a Non-IDEC++, so you can run code and debug in terminal.
- Please make sure you have used sudo
- Enjoy it! =)

## To uninstall

```bash
cd Non-IDECPlusPlus
sudo ./uninstall.sh && source ~/.bashrc
```

- Remember, you need to use sudo 
