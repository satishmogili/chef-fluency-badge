#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#Install apache package

if node['platform_family'] == "rhel"
        package = "apache2"
elsif node['platform_family'] == "debian"
        package = "apache2"
end

package 'apache2' do
        package_name package
        action :install
end

service 'apache2' do
        service_name 'apache2'
        action [:start, :enable]
end

