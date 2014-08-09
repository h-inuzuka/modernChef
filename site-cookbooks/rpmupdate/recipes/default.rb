#
# Cookbook Name:: rpmupdate
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "rpmupdate" do
  code <<-EOC
    rpm -ivh http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
  EOC
  not_if 'yum search epel-release | grep "epel-release"'
end

bash "rpmupdate" do
  code <<-EOC
    rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
  EOC
  not_if 'yum search remi-release | grep "remi-release"'
end
