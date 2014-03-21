package 'subversion'
package 'gnome-do'



desktop_settings "idle-activation-enabled" do
  schema   "org.mate.screensaver"
  type     "string"
  value    'false'
  user     'mduvall'
end



desktop_settings "lock-enabled" do
  schema   "org.mate.screensaver"
  type     "string"
  value    'false'
  user     'mduvall'
end



desktop_settings "button-lid-ac" do
  schema   "org.mate.power-manager"
  type     "string"
  value    'nothing'
  user     'mduvall'
end


#execute 'install firefox plugins' do
#	 command "firefox lp_linux.xpi"
#end
