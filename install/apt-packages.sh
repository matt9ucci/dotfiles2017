# make, gcc, g++, etc.
install_build-essential() {
	sudo apt-get install -y build-essential
}
uninstall_build-essential() {
	sudo apt-get purge -y build-essential
}

install_curl() {
	sudo apt-get install -y curl
}
uninstall_curl() {
	sudo apt-get purge -y curl
}

install_git() {
	sudo apt-get install -y git
}
uninstall_git() {
	sudo apt-get purge -y git && \
	rm -f $HOME/.gitconfig
}

install_vim() {
	sudo apt-get install -y vim
}
uninstall_vim() {
	sudo apt-get purge -y vim && \
	rm -rf $HOME/.vim && \
	rm -f $HOME/.vimrc
}
