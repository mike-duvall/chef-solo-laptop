#Run all as root (sudo su - )


#yes | apt-get purge medibuntu-keyring
#rm /etc/apt/sources.list.d/medibuntu.list
sed -i '/^deb http:\/\/packages.medibuntu.org*/d' /etc/apt/sources.list /etc/apt/sources.list.d/*.list
apt-get update
yes | apt-get upgrade
apt-get install curl
curl -L https://www.opscode.com/chef/install.sh | bash
chef-solo -c solo.rb -j solo.json

