//count = count + 1;

if set_count == 0 && count > 3000{
	count = 0;
	set_count = 1;
	
}

if count == 3000{
	dia = dia+1;
	switch(dia){
		case 1:
			room_goto(dia01_cutscene);
		break;
		case 2:
			room_goto(dia02_cutscene);
		break;
		case 3:
			room_goto(dia03_cutscene);
		break;
		case 4:
			room_goto(gameover);
		break;
	}
	
}
if count == 3050{
	count = 50;
}
if set_game == 0{/*
	if room_get_name(room) == "Room1" && count >= 800 && dia == 3{
		if instance_exists(obj_marcos){
			obj_marcos.x =2720;
			obj_marcos.y = 768;
		}
	}else{
		if instance_exists(obj_marcos){
			obj_marcos.x = -2720;
			obj_marcos.y = -768;
		}
	}*/
	if instance_exists(obj_player){
		obj_player.x = xx;
		obj_player.y = yy;
		set_game = 1;
	}
	/*
	if room_get_name(room) == "Room1" && jose_seek == 0 && count < 200 && dia == 2{
		obj_jose.x = 1312;
		obj_jose.y = 2944;
	}
	if (room_get_name(room) == "Room1" && jose_seek == 0 && count > 200 && dia == 2) or (dia02_event == 1){
		obj_jose.x = -1312;
		obj_jose.y = -2944;
	}
	if jose_seek == 1 && dia02_event == 0{
		obj_jose.x = obj_player.x;
		obj_jose.y = obj_player.y;
	}
	if room_get_name(room) == "Room2"{
		if jose_seek == 1{
			obj_leticia.x = 608;
			obj_leticia.y = 128;
			if dia02_event == 1{
			obj_jose.x = 672;
			obj_jose.y = 128;
			}
		}else{
			obj_leticia.x = -608;
			obj_leticia.y = -128;
		}
		
	}*/
}
