if state = 0{
	obj_entidade.image_speed = 0;
	obj_entidade.image_index= 6;
	obj_entidade.direction = point_direction(x,y,x-10,y);
	obj_morto.direction = point_direction(x,y,x+10,y);
	obj_morto.image_speed = 0;
	obj_morto.image_index= 8;
	state = 1;
}
if state == 1{
	text = 1;
	state = 2;
}
if state == 2 && keyboard_check_pressed(vk_space){
	text = text + 1;
}
if text == 5{
	room_goto(main_menu);;
}
switch (dataCutscene.amigos){
	case 1:
		if text == 2{
			dataCutscene.dia = 1;
			dataCutscene.jose_seek = 0;
			room_goto(dia01_cutscene);
		}
	break;
	case 2:
		if text == 2{
			dataCutscene.dia = 1;
			dataCutscene.jose_seek = 0;
			room_goto(dia01_cutscene);
		}
	break;
	case 3:
		if text == 2{
			dataCutscene.dia = 1;
			dataCutscene.jose_seek = 0;
			game_end();
		}
	break;
}