#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2019 The Authors, All Rights Reserved.
package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
      content 'Hello World'
end

service 'httpd' do
      action [ :enable, :start ]
end
