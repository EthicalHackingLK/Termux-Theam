#!/data/data/com.termux/files/usr/bin/bash
#@Author prince kumar 
#@ Date 21 feb 2020
#Start ------------
#Define some colour code---
r="\e[31;1m"
o="\e[32;1m"
g="\e[33;1m"
pu="\e[35;1m"
w="\e[0;1m"
#Color coding end here 
#Make a function to exit the program ---
user_intrupt(){
	echo -e "${r} ______Ethical Hacking LK_______"
	sleep 2
	exit
}

#Trap user signal
trap user_intrupt SIGINT
trap user_intrupt SIGTSTP
sfs="/data/data/com.termux/files/home"
#Make a function to update the repo...
up_repo(){
	git pull https://github.com/princekrvert/m_kit.git > /dev/null 2>&1
	clear
}
up_repo
#install all requirememts--------
req(){
	apt update && apt upgrade
	apt-get install zsh
	pkg install curl
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

}
req
#Change z shell to default----
c_shell(){
	cd -s $(which zsh)
	echo -e "${r} Default shell changed to zsh"
	#Or add zsh to bshrc
	cd ~
	cd ..
	cd usr/etc
	echo "zsh" >> bash.bashrc

}
c_shell
#Shell changing function complete----
clear
#Make a banner for the m kit tool
banner(){
	clear
	echo -e "${r}

▀█▀ █▀▀ █▀█ █▀▄▀█ █░█ ▀▄▀ ▄▄ ▀█▀ █░█ █▀▀ ▄▀█ █▀▄▀█
░█░ ██▄ █▀▄ █░▀░█ █▄█ █░█ ░░ ░█░ █▀█ ██▄ █▀█ █░▀░█
                                  
								  ${o} MADE BY Ethical Hacking LK
 "
}
banner

#make a function for setup the theme ----
theme(){
	thm=$1
	cd ~
	sed -i '/ZSH_THEME=/d' .zshrc
	sed -i "24i ZSH_THEME=\"$1\"" .zshrc
	echo -e "Theme slected $1 "

}
#Make a manue for the oh my z shell
echo -e "${pu}ZSH THEME slection "
echo -e "\n"

echo -e "${g}[${o}01${g}] ${w} Default"
echo -e "${g}[${o}02${g}] ${w} Powerlevel10k"
echo -e "${g}[${o}03${g}] ${w} About me"
echo " "
#Handle user input --------
echo -ne "${o}[${r}~${o}] ${w} Select any : "
read t_optn # Theme option-----
case $t_optn in
	01 | 1)
		echo " "
		echo -e "${r} Default ";;

	02 | 2)
		echo " "
		echo -e "${r} Powlerlevel10k"
		cd ~ 
		rm -rf powerlevel10k
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
		echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

		;;
	03)
		echo "Ethical Hacking LK ";;
	*)

fi
cd ~ 
cd m_kit
bash f_change.sh

echo -e "${g} Please restart your termux"




