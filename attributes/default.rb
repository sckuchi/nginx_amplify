if node['platform_version'].to_i >= 7
  default['nginx']['amplify']['platform_version'] = 7
else
  default['nginx']['amplify']['platform_version'] = 6
end


#Accepted values are default, custom
# use custom if you want to override the settings.

default['nginx']['amplify']['install_type'] = "default"

default['nginx']['amplify']['version'] = "0.46.2"
default['nginx']['amplify']['api_key'] = "ef84d1a2fc73f2b2c376348fcb67ae90"
default['nginx']['amplify']['url'] = "https://packages.amplify.nginx.com/#{node['platform']}/#{node['nginx']['amplify']['platform_version']}/#{node['kernel']['machine']}/RPMS/nginx-amplify-agent-#{node['nginx']['amplify']['version']}.el#{node['nginx']['amplify']['platform_version']}.#{node['kernel']['machine']}.rpm"
default['nginx']['amplify']['package_name']="nginx-amplify-agent"
default['nginx']['amplify']['agent_conf_path']="/etc/amplify-agent"
default['nginx']['amplify']['agent_conf_file']="#{node['nginx']['amplify']['agent_conf_path']}/agent.conf"
default['nginx']['amplify']['amplify_hostname']="node['fqdn']"
default['nginx']['amplify']['api_url']="https://receiver.amplify.nginx.com:443"
default['nginx']['amplify']['api_ping_url']="#{node['nginx']['amplify']['api_url']}/ping/"
default['nginx']['amplify']['api_receiver_url']="#{node['nginx']['amplify']['api_url']}/1.3"
default['nginx']['amplify']['public_ntp']="north-america.pool.ntp.org"
default['nginx']['amplify']['nginx_conf_file']="/etc/nginx/nginx.conf"
default['nginx']['amplify']['amplify_pid_file']="/var/run/amplify-agent/amplify-agent.pid"
