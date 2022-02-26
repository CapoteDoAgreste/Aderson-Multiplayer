// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_give_data(){
	instance_create_layer(x,y,layer,dataCarrier);
	dataCarrier.dia = dia;
	dataCarrier.xx = xx;
	dataCarrier.yy = yy;
	dataCarrier.jose_seek = jose_seek;
	dataCarrier.dia02_event = dia02_event;
	dataCarrier.count = count;
	dataCarrier.amigos = amigos;
	dataCarrier.sprite = sprite_index;
}