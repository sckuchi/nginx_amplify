#
# Cookbook:: nginx_amplify
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

raise "api key not found. Please see the readme for more details" if node['nginx']['amplify']['api_key'].to_s.strip.empty?

include_recipe 'nginx::default'

if node['nginx']['amplify']['install_type'].eql?'default'
  include_recipe 'nginx_amplify::default_install'
else
  include_recipe 'nginx_amplify::custom'
end
