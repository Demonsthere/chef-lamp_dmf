execute 'rm /var/www/html/index.html' do
  action :run
end

remote_file '/var/www/html/smf.tar.gz' do
  owner 'root'
  group 'root'
  mode '0644'
  source 'http://download.simplemachines.org/index.php/smf_2-0-11_install.tar.gz'
end

execute 'tar xvfz smf.tar.gz' do
  action :run
  cwd '/var/www/html'
end

cookbook_file '/var/www/set_premissions.sh' do
  source 'set_premissions.sh'
  owner 'root'
  group 'root'
  mode '0755'
end

cookbook_file '/var/www/html/repair_settings.php' do
  source 'repair_settings.php'
  owner 'root'
  group 'root'
  mode '0777'
end

execute 'sh set_premissions.sh' do
  cwd '/var/www'
  action :run
end
