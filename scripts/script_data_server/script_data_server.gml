// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_data_server(){
	buffer_write(buff,buffer_s16,obj_player.x);
	buffer_write(buff,buffer_s16,obj_player.y);
	buffer_write(buff,buffer_s16,obj_player.sprite_index);
	buffer_write(buff,buffer_s16,obj_player.image_index);
}