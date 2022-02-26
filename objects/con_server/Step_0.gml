for(i = ds_map_find_first(jogadores);!is_undefined(i); i = ds_map_find_next(jogadores,i)){
	obj = jogadores[? i];
	buffer_seek(buff,buffer_seek_start,0);
	buffer_write(buff,buffer_string,"Send_Client");
	buffer_write(buff,buffer_s16,instance_number(obj_render_player) - 1);
	with(obj_render_player){
		if (other.obj.sock != sock){
		buffer_write(con_server.buff,buffer_s16,sock);
		buffer_write(con_server.buff,buffer_s16,x);
		buffer_write(con_server.buff,buffer_s16,y);
		buffer_write(con_server.buff,buffer_s16,sprite_index);
		buffer_write(con_server.buff,buffer_s16,image_index);
		
		}
	}
	network_send_packet(obj.sock, buff,buffer_tell(buff));
}