if(place_meeting(x,y,obj_escada_floor01_01) or place_meeting(x,y,obj_escada_floor01_02) or place_meeting(x,y,obj_escada_floor01_03) or place_meeting(x,y,obj_escada_floor02_01) or place_meeting(x,y,obj_escada_floor02_02) or place_meeting(x,y,obj_escada_floor02_03)){
	var room_name = room_get_name(room);
	if (room_name == escola_floor01_client or room_name == escola_floor02_client){
		instance_destroy(self);
	}
}