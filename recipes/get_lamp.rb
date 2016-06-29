execute 'apt-get update' do
  action :run
end

node[:lamp_smf][:lamp_packages].each do |pkg|
  package pkg do
    action :upgrade
  end
end
