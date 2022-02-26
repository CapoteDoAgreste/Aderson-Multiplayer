if place_meeting(x,y,obj_player) && system.dia == 2 && system.jose_seek == 1{
	cutscene = true;
}
if cutscene == true && cutscene_set == 0{
	obj_player.spd = 0;
	instance_create_layer(-100,-100,layer,obj_btn_sim);
	instance_create_layer(x,y,layer,cutscene001);
	obj_player.image_index = 13;
	cutscene001.text = 1;
	cutscene_set = 1;
	system.amigos = system.amigos + 1;
}
if instance_exists(cutscene001){
	if keyboard_check_pressed(vk_space){
		cutscene001.text = cutscene001.text + 1;
	}
	if cutscene001.text > 3{
		obj_player.spd = 8;
		cutscene = false;
		instance_destroy(cutscene001);
		instance_destroy(obj_btn_sim);
		system.dia02_event = 1;
	}
}
