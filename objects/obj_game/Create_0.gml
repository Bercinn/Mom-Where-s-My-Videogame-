var _lay_id = layer_get_id("Blur");
layer_set_visible(_lay_id, false);

global.timer = global.max_timer;
show_time = global.timer;

cur_bg = choose(0, 1, 2);

global.can_run_timer = true;

switch(cur_bg){
	case 0:
		var _1 = instance_create_depth(160, 288, depth-1, obj_toybox);
		var _2 = instance_create_depth(384, 192, depth-1, obj_bedside);
		var _3 = instance_create_depth(512, 320, depth-1, obj_bedside);
		with(choose(_1, _2, _3)){
			with_cell = true;
		}
	break;
	
	case 1:
		var _1 = instance_create_depth(128, 288, depth-1, obj_bedside);
		var _2 = instance_create_depth(320, 352, depth-1, obj_toybox);
		var _3 = instance_create_depth(512, 288, depth-1, obj_bedside);
		with(choose(_1, _2, _3)){
			with_cell = true;
		}
	break;
	
	case 2:
		var _1 = instance_create_depth(96, 288, depth-1, obj_bush);
		var _2 = instance_create_depth(288, 224, depth-1, obj_bush);
		var _3 = instance_create_depth(544, 320, depth-1, obj_bush);
		with(choose(_1, _2, _3)){
			with_cell = true;
		}
	break;
}
