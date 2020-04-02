echo "************************^^^^^^^^^^^^******************************"
echo "Welcome to a simple tool to install Node.js and Yarn package manager"

echo "************************^^^^^^^^^^^^******************************"

# Update the OS and install curl
#sudo apt update
sudo apt install curl -y

# Get  the script
cd /temp
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "Installing node 8.11.0"

nvm install 8.11.0

nvm use 8.11.0

echo "Checking node version"

node -v

echo "Installing Yarn"

echo

echo

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update && sudo apt-get install --no-install-recommends yarn

yarn -v

echo "Bye,"



