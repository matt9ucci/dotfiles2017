restore_skel() {
	cp /etc/skel/.bash_logout $HOME
	cp /etc/skel/.bashrc $HOME
	cp /etc/skel/.profile $HOME
}
