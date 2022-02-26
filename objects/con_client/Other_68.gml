var buff = async_load[? "buffer"];
var rbuff = buffer_read (buff,buffer_string);

if (rbuff == "Send_Client"){
	var size = buffer_read(buff,buffer_s16);
	for ( i = 0;i < size; i ++){//estutura de repetição junta com adição que envolve o size, ele representa o número de jogadores
		var sock = buffer_read(buff,buffer_s16);
		var xx = buffer_read(buff,buffer_s16);
		var yy = buffer_read(buff,buffer_s16);
		var obj_spr_index = buffer_read(buff,buffer_s16);
		var obj_image_index = buffer_read(buff,buffer_s16);
		if (!ds_map_exists(ds_jogadores,sock)){
			var obj = instance_create_depth(xx,yy,0,obj_render_player);
			ds_map_add(ds_jogadores,sock,obj);
		}else{
			var obj = ds_jogadores[? sock];
			obj.x = xx;
			obj.y = yy;
			obj.sprite_index = obj_spr_index;
			obj.image_index = obj_image_index;
		}
	}
}
if rbuff == "Socket_do_jogador"{
	var s = buffer_read(buff,buffer_s16);
	var obj = ds_jogadores[? s];
	instance_destroy(obj);
	ds_map_delete(ds_jogadores,s);
}