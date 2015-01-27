#
# Cookbook Name:: role-mysql
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'mysql::server'

mysql_service 'default' do
  port '3306'
  version '5.5'
  bind_address '127.0.0.1'
  data_dir '/data'
  initial_root_password 'changethispassword'
  action [:create, :start]
end
