#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#bash "mysql-repo" do
#  code <<-EOC
#    yum -y install http://repo.mysql.com/mysql-community-release-el6-5.noarch.rpm
#  EOC
#  not_if 'cat /etc/yum.repos.d/mysql-community.repo | grep "mysql-5.6-community"'
#end

#bash "mysql-server" do
#  code <<-EOC
#    yum -y install mysql-community-server
#  EOC
#  not_if 'yum search mysql | grep "mysql56-community"'
#end


package "mysql-server" do
  action :install
end


service "mysqld" do
  action [ :enable, :start ]
end
