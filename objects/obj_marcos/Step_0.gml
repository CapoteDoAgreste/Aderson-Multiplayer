script_skin();
if (place_meeting(x,y,obj_detector) && keyboard_check_pressed(ord("E"))){
	state = 1;
}

if state == 1{
	direction = point_direction(x,y,obj_player.x,obj_player.y);
	system.amigos = system.amigos + 1;
	state = 2;
}
if state ==2{
	text_display = 1;
	text = 1;
	state = 3;
}

if (text_display == 1 && keyboard_check_pressed(vk_space)){
	text = text+1;
}