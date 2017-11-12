initialize_bash() {
	rm -f $HOME/.bashrc && ln -sf $HOME/dotfiles/bashrc $HOME/.bashrc
}

initialize_git() {
	rm -f $HOME/.gitconfig

	git config --global user.name "Matt Gucci"
	git config --global user.email matt9ucci@gmail.com

	git config --global core.editor vi
	git config --global credential.helper 'cache --timeout=86400'

	git config --global alias.br branch
	git config --global alias.c commit
	git config --global alias.co checkout
	git config --global alias.st status
}

# For VSCode Go https://marketplace.visualstudio.com/items?itemName=lukehoban.Go
initialize_gopath() {
	go version &> /dev/null
	if [[ $? -eq 0 ]]; then
        rm -rf "$(go env GOPATH)"
        go get -v github.com/nsf/gocode
        go get -v github.com/rogpeppe/godef
        go get -v github.com/golang/lint/golint
        go get -v github.com/lukehoban/go-outline
        go get -v sourcegraph.com/sqs/goreturns
        go get -v golang.org/x/tools/cmd/gorename
        go get -v github.com/tpng/gopkgs
        go get -v github.com/newhook/go-symbols
        go get -v golang.org/x/tools/cmd/guru
        go get -v github.com/derekparker/delve/cmd/dlv
	else
		echo "go is not installed."
	fi
}

initialize_mateterminal() {
	gsettings set org.mate.terminal.keybindings copy '<Ctrl>c'
	gsettings set org.mate.terminal.keybindings paste '<Ctrl>v'
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ silent-bell true
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-custom-default-size true
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-columns 80
	gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-rows 40
}

initialize_powershell() {
	pwsh -Command 'git clone https://github.com/matt9ucci/PSProfiles.git (Split-Path $PROFILE)'
}

initialize_vim() {
	rm -rf $HOME/.vim && ln -sf $HOME/dotfiles/vim $HOME/.vim
	rm -f $HOME/.vimrc && ln -sf $HOME/dotfiles/vimrc $HOME/.vimrc
}
