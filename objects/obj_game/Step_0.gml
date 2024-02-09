if(global.timer > 0 && global.can_run_timer){
	global.timer -= delta_time/global.cur_time;
}else{
	if(global.timer <= 0){
		global.timer = 0;
	}
}
show_time = ceil(global.timer);
