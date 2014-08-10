#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#bash "php5.5" do
#  code <<-EOC
#    yum -y install php --enablerepo=remi-php55
#  EOC
#  not_if 'yum list installed | grep "php" | grep "5.5"'
#end

#bash "php5.5" do
#  code <<-EOC
#    yum --enablerepo=remi-php55 -y install php php-devel php-cli php-mysql php-mbstring
#  EOC
#  not_if 'yum list installed | grep "php" | grep "5.5"'
#end

#bash "php-mysql" do
#  code <<-EOC
#    yum --enablerepo=remi-php55 -y install php php-devel php-cli php-mbstring
#  EOC
#  not_if 'yum list installed | grep "php-mysql" | grep "5.3.3-27"'
#end

%w{php php-devel php-mbstring php-mysql php-cli}.each do |pkg|
  package pkg do
    action :install
  end
end
