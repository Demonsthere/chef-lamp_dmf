execute 'mysqladmin create SMF' do
  action :run
end

execute "mysql -Bse \"create user admin@localhost identified by 'nimda';\"" do
  action :run
end

execute "sudo mysql -Bse \"grant all privileges on SMF.* to admin@localhost;\"" do
  action :run
end

execute 'mysqladmin flush-privileges' do
  action :run
end
