script_moves();










skin00 = keyboard_check_pressed(ord("0"));
skin01 = keyboard_check_pressed(ord("1"));
skin02 = keyboard_check_pressed(ord("2"));
skin03 = keyboard_check_pressed(ord("3"));
skin04 = keyboard_check_pressed(ord("4"));
skin05 = keyboard_check_pressed(ord("5"));
skin06 = keyboard_check_pressed(ord("6"));
skin07 = keyboard_check_pressed(ord("7"));
skin08 = keyboard_check_pressed(ord("8"));
skin09 = keyboard_check_pressed(ord("9"));
if skin00{
	sprite_index = spr_morto;
}
if skin01{
	sprite_index = spr_player;
}
if skin02{
	sprite_index = spr_npc14;
}
if skin03{
	sprite_index = spr_npc10;
}
if skin04{
	sprite_index = spr_npc05;
}
if skin05{
	sprite_index = spr_npc01;
}
if skin06{
	sprite_index = spr_npc02;
}
if skin07{
	sprite_index = spr_npc10;
}
if skin08{
	sprite_index = spr_npc11;
}
if skin09{
	sprite_index = spr_npc12;
}