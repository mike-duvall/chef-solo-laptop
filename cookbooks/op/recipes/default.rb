package 'subversion'
package 'gnome-do'
package 'dconf-tools'
#package 'virtualbox'
#package 'vagrant'



gsettings "org.mate.screensaver" do
  option "idle-activation-enabled"
  value "false"
  user "mduvall"
end




#desktop_settings "lock-enabled" do
#  schema   "org.mate.screensaver"
#  type     "string"
#  value    'false'
#  user     'mduvall'
#end

gsettings "org.mate.screensaver" do
  option "lock-enabled"
  value "false"
  user "mduvall"
end



gsettings "org.mate.power-manager" do
  option "button-lid-ac"
  value "nothing"
  user "mduvall"
end



gsettings "com.linuxmint.mintmenu" do
  option "hot-key"
  value "nothing"
  user "mduvall"
end


#execute 'install firefox plugins' do
#	 command "firefox lp_linux.xpi"
#end
