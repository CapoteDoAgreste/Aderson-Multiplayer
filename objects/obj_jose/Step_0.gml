if system.dia == 1{
	
	if set == 0{
		x = 1600;
		y = 2688;
		set = 1;
	}
	if state == 0{
		direction = point_direction(x,y,x,y+10);
		speed = 5;
		state = 1;
	}
	if place_meeting(x,y,obj_detector) && state == 1{
		obj_player.pa = point_direction(obj_player.x,obj_player.y,x,y);
		instance_create_layer(-100,-100,layer,obj_btn_sim);
		state = 2;
	}
	if state == 2{
		text = 1;
		state = 3;
	}
	if state == 3 && keyboard_check_pressed(vk_space){
		text = text+1;
	}
}




if system.dia == 2 && room_get_name(room) == "Room1"{
	if set == 0{
		x = 1440;
		y = 2912;
		set = 1;
	}
	if place_meeting(x,y,obj_detector) && state == 0 && system.jose_seek == 0{
		obj_player.pa = point_direction(obj_player.x,obj_player.y,x,y);
		instance_create_layer(-100,-100,layer,obj_btn_sim);
		state = 1;
	}
	if state == 1{
		text = 1;
		state = 2;
	}
	if state == 2 && keyboard_check_pressed(vk_space){
		text = text+1;
	}
	if state == 4{
		system.jose_seek = 1;
	}
}

if system.jose_seek == 1 && system.dia02_event == 0{
		direction = point_direction(x,y,obj_player.x,obj_player.y);
		if point_distance(x,y,obj_player.x,obj_player.y) > 100{
			speed = 7;
		}else{
			speed = 0;
		}
}

if system.dia == 2 && room_get_name(room) == "Room2"{
	if set == 0 && system.jose_seek == 1{
		x = obj_player.x;
		y = obj_player.y;
		set = 1;
		state = 1;
	}
	if system.jose_seek == 0{
		x = -1400;
		y = -2912;
		set = 1;
	}
}
if system.dia == 3{
	if set == 0{
		x = -1400;
		y = -2912;
		set = 1;
	}
}


script_skin();