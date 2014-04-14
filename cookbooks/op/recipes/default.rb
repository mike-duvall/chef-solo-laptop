package 'subversion'
package 'gnome-do'
package 'dconf-tools'
#package 'virtualbox'
#package 'vagrant'




gconf "/apps/gnome-do/preferences/Do/Platform/Common/AbstractKeyBindingService/Summon_Do" do
    action :set
    user 'mduvall'
    attr_val '<Super>Z'
    attr_type 'string'
end



ruby_block "kill gconfd-2 gconf settings will take effect" do
  block do
    output = `sudo -u mduvall ps -eF | sudo -u mduvall grep gconfd-2 |  sudo -u mduvall grep -v grep |  sudo -u mduvall awk '{print $2}' |  sudo -u mduvall  xargs kill -9`    
    output = output.strip()
    puts output
    # output = `sudo -u mduvall ps -eF | sudo -u mduvall grep gnome-do |  sudo -u mduvall grep -v grep |  sudo -u mduvall awk '{print $2}' |  sudo -u mduvall  xargs kill -9`    
    # output = output.strip()
    # puts output



  end
  action :create
end




gsettings "org.mate.screensaver" do
  option "idle-activation-enabled"
  value "false"
  user "mduvall"
end



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
