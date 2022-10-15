r="\e[31;1m"
o="\e[32;1m"
g="\e[33;1m"
pu="\e[35;1m"
w="\e[0;1m"
echo -e ${o}"\e[1;34m\nEthical Hacking LK" ${r}
mkdir -p ~/.plugins/zsh-autosuggestions
mkdir -p ~/.plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.plugins/zsh-autosuggestions; echo "source ~/.plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> $HOME/.zshrc;
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.plugins/zsh-syntax-highlighting; echo "source ~/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> $HOME/.zshrc;
banner(){
	clear
	echo -e "${r}

▀█▀ █▀▀ █▀█ █▀▄▀█ █░█ ▀▄▀ ▄▄ ▀█▀ █░█ █▀▀ ▄▀█ █▀▄▀█
░█░ ██▄ █▀▄ █░▀░█ █▄█ █░█    ░█░ █▀█ ██▄ █▀█ █░▀░█
                                  
	${o} MADE BY Ethical Hacking LK
 "
}
echo -e ${g}"Restart Termux"
sleep 5
banner