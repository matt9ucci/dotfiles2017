# See https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#ubuntu-1604
install_powershell() {
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list
    sudo apt-get update
    sudo apt-get install -y powershell
}

uninstall_powershell() {
	sudo apt-get purge -y powershell
}
