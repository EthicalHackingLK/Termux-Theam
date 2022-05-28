	apt update && apt upgrade
	apt-get install zsh
	pkg install curl
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    cd -s $(which zsh)
	echo -e "${r} Default shell changed to zsh"
	#Or add zsh to bshrc
	cd ~
	cd ..
	cd usr/etc
	echo "zsh" >> bash.bashrc

    echo " "
		echo -e "${r} Powlerlevel10k"
		cd ~ 
		rm -rf powerlevel10k
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
		echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
