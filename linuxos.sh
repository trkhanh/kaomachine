echo "##### Software installation script #####"

echo "0. Installin dependencies"
sudo apt-get update
sudo apt-get install curl wget


# installing gcloud
echo "1. Installing gcloud"
# Create an environment variable for the correct distribution
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
# Add the Cloud SDK distribution URI as a package source
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
# Update the package list and install the Cloud SDK
sudo apt-get update && sudo apt-get install google-cloud-sdk
echo "################################################################"


echo "2. Installing docker"
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install apt-transport-https \
                       software-properties-common \
                       ca-certificates
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -v
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
sudo apt-get install software-properties-common
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update
sudo apt-get -y install docker-engine
sudo groupadd docker
sudo usermod -aG docker $USER
echo "################################################################"


echo "3. Installing docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.10.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "################################################################"


echo "4. Installing Atom"
wget https://atom.io/download/deb -O atom.deb
sudo dpkg -i atom.deb
# installing required packages
apm install react fold-functions highlight-selected linter linter-eslint linter-ruby \
            minimap minimap-highlight-selected
# installing required themes
apm install atom-material-ui spacegray-atom-dark-syntax
echo "################################################################"

echo "5. Installing ubuntu packages"
# redshift
sudo apt-get install redshift redshift-gtk
# ubuntu tweak
wget http://archive.getdeb.net/ubuntu/pool/apps/u/ubuntu-tweak/ubuntu-tweak_0.8.7-1~getdeb2~xenial_all.deb -O utweak.deb
sudo dpkg -i utweak.deb
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
sudo dpkg -i --force-depends chrome.deb
# slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb -O slack.deb
sudo dpkg -i slack.deb
echo "################################################################"


echo "6. Installing NVM and Node"
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
nvm install 6.9
echo "################################################################"


echo "7. Creating required aliases"
touch ~/.bash_aliases
echo "# ----------------------" >> ~/.bash_aliases
echo "# Git Aliases" >> ~/.bash_aliases
echo "# ----------------------" >> ~/.bash_aliases
echo "alias ga='git add'" >> ~/.bash_aliases
echo "alias gaa='git add .'" >> ~/.bash_aliases
echo "alias gaaa='git add -A'" >> ~/.bash_aliases
echo "alias gb='git branch'" >> ~/.bash_aliases
echo "alias gbd='git branch -d '" >> ~/.bash_aliases
echo "alias gc='git commit'" >> ~/.bash_aliases
echo "alias gcm='git commit -m'" >> ~/.bash_aliases
echo "alias gco='git checkout'" >> ~/.bash_aliases
echo "alias gcob='git checkout -b'" >> ~/.bash_aliases
echo "alias gcom='git checkout master'" >> ~/.bash_aliases
echo "alias gd='git diff'" >> ~/.bash_aliases
echo "alias gda='git diff HEAD'" >> ~/.bash_aliases
echo "alias gi='git init'" >> ~/.bash_aliases
echo "alias gl='git log'" >> ~/.bash_aliases
echo "alias glg='git log --graph --oneline --decorate --all'" >> ~/.bash_aliases
echo "alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'" >> ~/.bash_aliases
echo "alias gm='git merge --no-ff'" >> ~/.bash_aliases
echo "alias gp='git pull'" >> ~/.bash_aliases
echo "alias gss='git status -s'" >> ~/.bash_aliases
echo "alias gst='git stash'" >> ~/.bash_aliases
echo "alias gstl='git stash list'" >> ~/.bash_aliases
echo "alias gstp='git stash pop'" >> ~/.bash_aliases
echo "alias gstd='git stash drop'" >> ~/.bash_aliases

echo "# ----------------------" >> ~/.bash_aliases
echo "# Git Functions" >> ~/.bash_aliases
echo "# ----------------------" >> ~/.bash_aliases
echo "# Git log find by commit message" >> ~/.bash_aliases
echo "function glf() { git log --all --grep="$1"; }" >> ~/.bash_aliases

echo "# ----------------------" >> ~/.bash_aliases
echo "# docker-compose Aliases" >> ~/.bash_aliases
echo "# ----------------------" >> ~/.bash_aliases
echo "alias dc='docker-compose'" >> ~/.bash_aliases
echo "alias dbash='docker-compose run web bash'" >> ~/.bash_aliases
echo "alias drails='docker-compose run web rails c'" >> ~/.bash_aliases

echo "Thanks!"