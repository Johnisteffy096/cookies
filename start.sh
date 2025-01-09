apt update && apt upgrade
apt install tmux net-tools unzip
#Download and install Google Chrome Stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
apt --fix-broken install -y
rm google-chrome-stable_current_amd64.deb
#Download and install Golang-Go
wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.23.4.linux-amd64.tar.gz
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
exec $SHELL -l
# Download and install Node.js:
nvm install 22
apt install -y xvfb google-chrome-stable && Xvfb :99 -screen 0 1920x1080x24 & export DISPLAY=:99
go mod tidy
go mod vendor
