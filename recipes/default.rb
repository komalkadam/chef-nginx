#
# Cookbook:: chef-rean-java
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.


bash 'Installing Nginx' do
    user 'root'
    cwd '/tmp'
    code <<-EOH
    sudo apt-get update
    sudo apt-get install nginx -y
    sudo ufw status
    sudo ufw app list
    sudo ufw allow 'Nginx HTTP'
    sudo ufw status
    systemctl status nginx
    sudo apt-get install curl -y
    curl -4 icanhazip.com
    EOH
  end
