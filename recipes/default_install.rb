package 'epel-release'

execute 'agent installation' do
  command "curl -sS -L -O https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh && API_KEY='#{node['nginx']['amplify']['api_key']}' sh ./install.sh -y"
  only_if {!Dir.exists?("/etc/amplify-agent")}
end

service "amplify-agent" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
