if place_meeting(x,y,obj_player){
	system.xx = 3264;
	system.yy = 5408;
	room_goto(escola_floor02_client);
	if instance_exists(con_client){
		network_destroy(con_client.tcp);
	}
	if instance_exists(con_client_floor2){
		network_destroy(con_client_floor2.tcp);
	}
}