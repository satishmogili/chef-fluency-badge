#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#Install apache package
pachage 'apache2' do
        package_name 'apache2'
        action :install
end

service 'apache2' do
        service_name 'apache2'
        action [:start, :enable]
end

 
