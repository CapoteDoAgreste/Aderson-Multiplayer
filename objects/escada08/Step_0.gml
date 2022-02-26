if place_meeting(x,y,obj_player){
	system.xx = 4064;
	system.yy = 2336;
	if instance_exists(con_client){
		network_destroy(con_client.tcp);
	}
	if instance_exists(con_client_floor2){
		network_destroy(con_client_floor2.tcp);
	}
}