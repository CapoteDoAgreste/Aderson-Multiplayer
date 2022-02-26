/* template
if text = 1{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"",30,576);
}
*/
draw_set_font(Font1);
switch(dataCutscene.amigos){
	case 0:
		if text == 1{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"Ué, você não deveria conseguir fazer 0 amigos kkkkk",30,576);
		}
		if text == 2{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"hacker é foda!",30,576);
		}
		game_end();
	break;
	case 1:
		if text == 1{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"Você viveu rodeado de pessoa falsas e ninguém foi ao seu enterro!",30,576);
		}
	break;
	case 2:
		if text == 1{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"Você teve poucos amigos, eles eram fiéis, porém ainda viveu sozinho e morreu infeliz.",30,576);
		}
	break;
	case 3:
		if text == 1{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"Você tive diversos amigos fiéis, sempre estiveram ao seu lado e nunca se sentiu sozinho, você morreu feliz!",30,576);
		}
		if text == 1{
			draw_sprite(spr_caixa,0,box_x,box_y);
			draw_text_ext(text_x,text_y,"Parabéns, quebraste o ciclo!",30,576);
		}
	break;
}