function script_moves() {
	

#region controls
	#region jogador
//if (controles == 2){
	key_up = keyboard_check(ord("W"))//cima
	key_down = keyboard_check(ord("S"))//baixo
	key_left = keyboard_check(ord("A"))//esquerda
	key_right = keyboard_check(ord("D"))//direita
	key_interact = keyboard_check_pressed(ord("E"))//pistola
/*}else{
		key_up = keyboard_check(vk_up)//cima
		key_down = keyboard_check(vk_down)//baixo
		key_left = keyboard_check(vk_left)//esquerda
		key_right = keyboard_check(vk_right)//direita

}*/
	

	#endregion

#endregion	

#region movimento personagem
#region set

	xaxis = (key_right - key_left);
	yaxis = (key_down - key_up);

	var dir = point_direction(0, 0, xaxis,yaxis);
	if (xaxis ==0) and (yaxis ==0){
		len = 0;
	}
	else{
		len = spd;
	}
	
	//variaveis de velocidade
	hspd = lengthdir_x(len, dir);
	vspd = lengthdir_y(len, dir);
#endregion
#region colisao horizontal
	if place_meeting(x+hspd, y,obj_wall){
		while !place_meeting(x+hspd,y,obj_wall){
			x += sign(hspd);
		}
		hspd = 0;
	}
	x+=hspd;

#endregion
#region colisao vertical
	if place_meeting(x, y+vspd, obj_wall){
		while !place_meeting(x,y+vspd,obj_wall){
			x += sign(vspd);
		}
		vspd = 0;
	}
	y+=vspd
#endregion


#endregion
	if (!instance_exists(obj_btn_sim)){
		if xaxis > 0{
			pa = point_direction(x,y,x+10,y);
		}
		if xaxis < 0{
			pa = point_direction(x,y,x-10,y);
		}
		if yaxis > 0{
			pa = point_direction(x,y,x,y+10);
		}
		if yaxis < 0{
			pa = point_direction(x,y,x,y-10);
		}
		
		if xaxis != 0 or yaxis!=0{
			image_speed = 1;
			if xaxis > 0{
				spr_backup = 8;
				if image_index > 11{
					image_index = 8;
				}
				if image_index < 8{
					image_index = 8;
				}
			}
			if xaxis < 0{
				spr_backup = 4;
				if image_index > 7{
					image_index = 4;
				}
				if image_index < 4{
					image_index = 4;
				}
			}
			if yaxis > 0{
				spr_backup = 1;
				if image_index > 3{
					image_index = 1;
				}
				if image_index < 1{
					image_index = 1;
				}
			}
			if yaxis < 0{
				spr_backup = 12;
				if image_index > 15{
					image_index = 12;
				}
				if image_index < 12{
					image_index = 12;
				}
			}
		}if xaxis == 0 && yaxis==0{
			image_index = spr_backup;
			image_speed = 0;
		}
	}else{
		image_speed = 0;
		image_index = spr_backup;
	}
}


