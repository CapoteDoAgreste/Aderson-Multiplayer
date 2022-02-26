/* template
if text = 1{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"",30,576);
}
*/
draw_set_font(Font1);
if text == 1{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Eu estou morto?",30,576);
}
if text == 2{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Sim. Aparentemente, tiveste uma vida triste e infeliz, com um emprego medíocre, morreu sozinho, sem descendentes e amigos.",30,576);
}
if text == 3{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Mas eu quero ter amigos!",30,576);
}
if text == 4{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Irei te dar mais uma chance, mas sua alma não poderá descansar até que consiga ter proveito desta chance. Você deverá conseguir o maior número de amigos!",30,576);
}
if text == 5{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Até lá, sua alma não terá descanço, boa sorte!",30,576);
}
if text == 6{
	draw_sprite(spr_caixa,0,box_x,box_y);
	draw_text_ext(text_x,text_y,"   Assim, terá uma vida feliz e pessoas para ir no seu enterro!",30,576);
}