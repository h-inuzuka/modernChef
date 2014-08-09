#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "php5.5" do
  code <<-EOC
    yum -y install php --enablerepo=remi-php55
  EOC
  not_if 'yum list installed | grep "php" | grep "5.5"'
end
