if criado == 0{
	skin = irandom_range(1,13);
	direction = irandom_range(0,360);
	criado = 1;
	switch (skin){
		case 1:
			sprite_index = spr_npc01;
		break;
		case 2:
			sprite_index = spr_npc02;
		break;
		case 3:
			sprite_index = spr_npc03;
		break;
		case 4:
			sprite_index = spr_npc04;
		break;
		case 5:
			sprite_index = spr_npc05;
		break;
		case 6:
			sprite_index = spr_npc06;
		break;
		case 7:
			sprite_index = spr_npc07;
		break;
		case 8:
			sprite_index = spr_npc08;
		break;
		case 9:
			sprite_index = spr_npc09;
		break;
		case 10:
			sprite_index = spr_npc10;
		break;
		case 11:
			sprite_index = spr_npc12;
		break;
		case 12:
			sprite_index = spr_npc13;
		break;
		case 13:
			sprite_index = spr_npc14;
		break;
	}
}
if (obj_player.key_interact && place_meeting(x,y,obj_detector)){
	if falando == 0{
		falando = 1;
		msg_select = irandom_range(0,11);
	}else{
		falando = 0;
	}
}

if (falando && place_meeting(x,y,obj_detector)){
	falar = 1;
}else{
	falar = 0;
	falando = 0;
}
script_msgs();
script_skin();