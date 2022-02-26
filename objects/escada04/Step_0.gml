if place_meeting(x,y,obj_player){
	system.xx = 2976;
	system.yy = 4384;
	room_goto(escola_floor02_client);
	if instance_exists(con_client){
		network_destroy(con_client.tcp);
	}
	if instance_exists(con_client_floor2){
		network_destroy(con_client_floor2.tcp);
	}
}