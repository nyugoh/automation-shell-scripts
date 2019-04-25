echo "************************^^^^^^^^^^^^******************************"
echo "Welcome to a simple tool to install Node.js and Yarn package manager"

echo "************************^^^^^^^^^^^^******************************"

# Update the OS and install curl
#sudo apt update
sudo apt install curl -y

# Get  the script
cd /temp
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


nvm install 8.11.0

nvm use 8.11.0

echo "Checking node version"

echo node -v





