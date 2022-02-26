tcp = network_create_socket(network_socket_tcp);
network_connect(tcp, "20.20.1.14",4003);

buff = buffer_create(2048,buffer_grow,1);

ds_jogadores = ds_map_create();