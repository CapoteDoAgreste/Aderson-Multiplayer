var idd = async_load[? "id"];
var type = async_load[? "type"];

if serverr == idd {
	if(type == network_type_connect){
		var sock = async_load[? "socket"]
		var obj = instance_create_depth(3040,5856,0, obj_render_player);
		obj.sock = sock;
		ds_map_add(jogadores,sock,obj);
		
	}else if type == network_type_disconnect{
		var sock = async_load[? "socket"];
		var obj = jogadores[? sock];
		obj.sock = sock;
		instance_destroy(obj);
		ds_map_delete(jogadores,sock);
	}
}else{
	var sock = async_load[? "id"];
	var obj = jogadores[? sock];
	var buff = ds_map_find_value(async_load,"buffer");
	var rbuff = buffer_read(buff,buffer_string);
	
	if (rbuff == "Atualizar_Player"){
		var xx = buffer_read(buff,buffer_s16);
		var yy = buffer_read(buff,buffer_s16);
		var obj_spr_index = buffer_read(buff,buffer_s16);
		var obj_image_index = buffer_read(buff,buffer_s16);
			
			obj.x = xx;
			obj.y = yy;
			obj.sprite_index = obj_spr_index;
			obj.image_index = obj_image_index;
	}
}