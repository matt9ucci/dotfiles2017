install_vscode() {
	dpkg --status code &> /dev/null
	if [[ $? -eq 0 ]]; then
		echo 'vscode is already installed.'
	else
		deb="$HOME/vscode.deb"
		if [[ ! -f "$deb" ]]; then
			curl -o $deb -L https://go.microsoft.com/fwlink/?LinkID=760868
		fi
		sudo dpkg --install $deb && rm $deb
	fi
}

uninstall_vscode() {
	sudo dpkg --purge code
}
