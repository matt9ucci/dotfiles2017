# See https://golang.org/doc/install#install
install_golang() {
	$HOME/go/bin/go version &> /dev/null
	if [[ $? -eq 0 ]]; then
		echo "$($HOME/go/bin/go version) is already installed."
	else
		curl "https://storage.googleapis.com/golang/go$1.linux-amd64.tar.gz" | tar -xzf - --directory $HOME
	fi

	echo "$($HOME/go/bin/go version) is installed in $($HOME/go/bin/go env GOROOT)"
}

uninstall_golang() {
	rm -rf $HOME/go
}
