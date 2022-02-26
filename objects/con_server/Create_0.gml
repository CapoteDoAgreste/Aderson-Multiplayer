port = 4002;
max_client = 12;

serverr = network_create_server(network_socket_tcp,port,max_client);

jogadores = ds_map_create();

buff = buffer_create(2048,buffer_grow,1);