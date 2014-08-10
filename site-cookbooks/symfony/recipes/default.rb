#
# Cookbook Name:: symfony
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "symfony" do
  code <<-EOC
    curl -s https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
    composer create-project symfony/framework-standard-edition /vagrant/modern_php/html/symfony "2.5.*"
  EOC
end
