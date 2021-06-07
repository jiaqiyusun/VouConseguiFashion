set :branch, 'master'
set :server_address, '216.137.181.32'
set :password, 'Jiaqi-@ri-2o18'
ask(:password, nil, echo: false)
server fetch(:server_address), user: "root", roles: %w{app db web}
 
set :nginx_server_name, fetch(:server_address)
set :puma_preload_app, true