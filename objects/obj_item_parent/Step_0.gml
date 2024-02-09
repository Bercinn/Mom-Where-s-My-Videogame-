xscale = lerp(xscale, 1, .1);
yscale = lerp(yscale, 1, .1);
image_blend = c_white;

if(position_meeting(mouse_x, mouse_y, id)){
	image_blend = c_orange;
	if(mouse_check_button_pressed(mb_left)){
		xscale = .2;
		yscale = .2;
		if(with_cell && instance_number(obj_cellphone) == 0){
			instance_create_layer(x,y,"Phone",obj_cellphone);
		}
	}
}
