
#Run all as root (sudo su - )

# This is for Linux Mint 13 LTS


# Do an update
# Hard coded as shell command for now.  Consider shifting to chef later

# Remove obsolete medibuntu references
sed -i '/^deb http:\/\/packages.medibuntu.org*/d' /etc/apt/sources.list /etc/apt/sources.list.d/*.list


#Turn on Linux Mint backports
# Remove existing maya main upstream import line
grep -v "maya main upstream import" /etc/apt/sources.list > /tmp/temp-sources.list; mv /tmp/temp-sources.list /etc/apt/sources.list

# Re-add with 'backport' at end
echo "deb http://packages.linuxmint.com maya main upstream import backport"|cat - /etc/apt/sources.list > /tmp/out && mv /tmp/out /etc/apt/sources.list


# Update
apt-get update
yes | apt-get dist-upgrade

# Install chef
apt-get install curl
curl -L https://www.opscode.com/chef/install.sh | bash

# Run chef-solo
chef-solo -c solo.rb -j solo.json

