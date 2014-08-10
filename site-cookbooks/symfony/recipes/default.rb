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
#    yum -y install phpmyadmin --enablerepo remi
#    yum -y install php-pdo
    curl -s https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
    composer update
    mkdir /vagrant/modern_php/html
#    cd /vagrant/modern_php/html
    composer create-project symfony/framework-standard-edition /vagrant/modern_php/html/symfony "2.5.*"
  EOC
end
