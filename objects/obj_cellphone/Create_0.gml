speed = 10;

if(x < room_width/2 && y < room_height/2){
	direction = random_range(0, 270);
}else if(x > room_width/2 && y < room_height/2){
	direction = random_range(180, 270);
}else if(x < room_width/2 && y > room_height/2){
	direction = random_range(0, 90);
}else if(x > room_width/2 && y < room_height/2){
	direction = random_range(180, 270);
}

can_click = true;
