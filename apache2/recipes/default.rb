#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

execute "update" do
command "apt-get update -y"
action :run
end

package "apache2" do
 action :install
end

cookbook_file "/var/www/html/index.html" do
 source "index.html"
 mode "0644"
end

service "apache2" do
 action [:enable, :start]
end

