#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "nginx" do
  code <<-EOC
    sudo rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
  EOC
  not_if 'yum list installed | grep nginx | grep "1.6.1-1.el6.ngx"'
end


bash "nginx" do
  code <<-EOC
    yum -y install nginx
  EOC
end

service "nginx" do
  action [ :enable, :start ]
end

