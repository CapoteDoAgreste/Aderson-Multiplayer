// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_skin(){
if speed!=0{
			image_speed = 1;//direita
			if direction > -46 && direction < 46{
				spr_backup = 8;
				if image_index > 11{
					image_index = 8;
				}
				if image_index < 8{
					image_index = 8;
				}
			}
			//esquerda
			if direction > 134 && direction < 226{
				spr_backup = 4;
				if image_index > 7{
					image_index = 4;
				}
				if image_index < 4{
					image_index = 4;
				}
			}
			//baixo
			if direction > 269 && direction < 360{
				spr_backup = 1;
				if image_index > 3{
					image_index = 1;
				}
				if image_index < 1{
					image_index = 1;
				}
			}
			//cima
			if direction > 44 && direction < 136{
				spr_backup = 12;
				if image_index > 15{
					image_index = 12;
				}
				if image_index < 12{
					image_index = 12;
				}
			}
		}if speed == 0{
			image_index = spr_backup;
			image_speed = 0;
		}
}