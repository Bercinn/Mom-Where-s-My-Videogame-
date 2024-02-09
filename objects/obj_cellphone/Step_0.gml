speed = lerp(speed, 0, .15);
image_blend = c_white;

if(position_meeting(mouse_x, mouse_y, id) && can_click){
	image_blend = c_orange;
	if(mouse_check_button_pressed(mb_right) && can_click){
		can_click = false;
	}
}

if(!can_click){
	global.can_run_timer = false;
	x = lerp(x, room_width/2, .1);
	y = lerp(y, room_height/2, .1);
	image_xscale = lerp(image_xscale, 4, .1);
	image_yscale = image_xscale;
	var _lay_id = layer_get_id("Blur");
	layer_set_visible(_lay_id, true);
	
	y += sin_wave(5, 2);
	image_angle += sin_wave(.5,1);
	
	if(keyboard_check_pressed(vk_enter)){
		global.max_timer -= SEC * 10;
		room_restart();
	}
}
