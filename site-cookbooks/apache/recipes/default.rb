#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


#package "httpd" do
#  action :install
#end

#service "httpd" do
#  supports :status => true, :restart => true, :reload => true
#  action [ :enable, :start ]
#end


bash "httpd_remove" do
  code <<-EOC
    yum -y remove httpd
  EOC
#  not_if 'yum list installed | grep -v "httpd"'
end
