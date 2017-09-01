
node.override['nginx']['dir'] = node['stager']['dir'] + "/ngnix"

node.override['nginx']['port'] = node['stager']['port'].to_i

node.override['nginx']['init_style'] = "systemd"

node.override['nginx']['user'] = node['stager']['user']
node.override['nginx']['group'] = node['stager']['group']


include_recipe 'chef_nginx'
