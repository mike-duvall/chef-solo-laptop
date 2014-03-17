#Run all as root (sudo su - )

# This is for Linux Mint 13 LTS
# Remove obsolete medibuntu references
sed -i '/^deb http:\/\/packages.medibuntu.org*/d' /etc/apt/sources.list /etc/apt/sources.list.d/*.list

# Do an update
# Hard coded as shell command for now.  Consider shifting to chef later
apt-get update
yes | apt-get dist-upgrade

# Install chef
apt-get install curl
curl -L https://www.opscode.com/chef/install.sh | bash

# Run chef-solo
chef-solo -c solo.rb -j solo.json

