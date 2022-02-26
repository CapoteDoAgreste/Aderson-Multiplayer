// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function script_recieve_data(){
	if (instance_exists(dataCarrier)){
		count = dataCarrier.count;
		dia = dataCarrier.dia;
		xx = dataCarrier.xx;
		yy = dataCarrier.yy;
		jose_seek = dataCarrier.jose_seek;
		dia02_event = dataCarrier.dia02_event;
		amigos = dataCarrier.amigos;
		sprite_index = dataCarrier.sprite;
		instance_destroy(dataCarrier);
	}
}