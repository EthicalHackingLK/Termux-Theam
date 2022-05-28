r="\e[31;1m"
o="\e[32;1m"
g="\e[33;1m"
pu="\e[35;1m"
w="\e[0;1m"
#Color coding end here 
#Make a function to exit the program ---
user_intrupt(){
	echo -e "${r} ______Exiting M_KIT _______"
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

echo -e "${g}[${o}01${g}] ${pu} Default"
echo -e "${g}[${o}02${g}] ${pu} Powerlevel10k"
echo -e "${g}[${o}03${g}] ${pu} custum"
echo -e "${g}[${o}04${g}] ${pu} About me"
echo " "
#Handle user input --------
echo -ne "${o}[${r}~${o}] ${pu} Select any : "
read t_optn # Theme option-----
case $t_optn in
	01 | 1)
		echo " "
		echo -e "${g} Default ";;
	02 | 2)
		echo " "
		echo -e "${g} Powlerlevel10k"
		cd ~ 
		rm -rf powerlevel10k
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
		echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

		;;
	03)
		echo " "
		echo -e "${o}[${r}~${o}] ${r} Enter name of theme: "
		read t_name 
		theme $t=name ;;
	04)
		echo "Ethical Hacking LK ";;
	*)
		echo -e "${r} Invalid option";;
esac
#Now change the termux backgeound-----
#Make a function to handle user background choise---
back(){
	echo -e "${w} Changing background"
	cd $sfs/m_kit 
	cp OMX/$1/colors.properties ~/.termux


}
echo -e "${w} Change Background "
echo ""
echo -e "${w}01${r}. ${g} Default "
echo -e "${w}02${r}. ${g} D_Blue "
echo -e "${w}03${r}. ${g} D_Green"
echo -e "${w}04${r}. ${g} D_red"
echo -e "${w}05${r}. ${g} D_purple"
echo -e "${w}06${r}. ${g} L_yellow"
echo " "
echo -ne "${o}[${r}~${o}] ${w} Select any : "
read b_optn
if [[ $b_optn == 1 || $b_optn == 01 ]];then
	echo " "
elif [[ $b_optn == 2 ||  $b_optn == 02 ]];then
	back d_blue
elif [[ $b_optn == 3 || $b_optn == 03 ]];then
        back d_green
elif [[ $b_optn == 4 || $b_optn == 04 ]];then
        back d_red
elif [[ $b_optn == 5 || $b_optn == 05 ]] ;then
        back d_purple
elif [[ $b_optn == 6 || $b_optn == 06 ]];then
        back l_yellow
else 
	echo -e "${r} Invalid option"

fi
cd ~ 
cd Termux-Theme
bash thank.sh

echo -e "${g} Please restart your termux"




