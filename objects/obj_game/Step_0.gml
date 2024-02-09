if(global.timer > 0){
	global.timer -= delta_time/1000000;
}else{
	global.timer = 0;
}
show_time = ceil(global.timer);
