buffer_seek(buff,buffer_seek_start,0);
buffer_write(buff,buffer_string,"Atualizar_Player");
script_data_server();
network_send_packet(tcp, buff,buffer_tell(buff));

