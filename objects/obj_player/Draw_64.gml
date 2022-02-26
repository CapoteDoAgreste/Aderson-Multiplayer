if text == 1{
	draw_sprite(spr_caixa,0,640,576);
	draw_text_ext(340,global.text_y,"Você conseguiu um amigo!",30,576);
	spd = 0;
}
if keyboard_check_pressed(vk_space) && text == 1{
	system.amigos = system.amigos + 1;
	text = 0;
	spd = 8;
}