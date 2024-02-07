///@desc Align the text acoording to the x and y
///@param {real} x
///@param {real} y
function align_text(_x, _y){
	draw_set_halign(_x);
	draw_set_valign(_y);
}

///@desc Makes a sin wave
///@param {real} height
///@param {real} speed
///@param {real} modify
function sin_wave(_height, _speed, _modify = 0){
	return dsin(((current_time/10)*_speed)+_modify)*_height;
}

///@desc Starts a transition to another room
///@param {asset} destiny
///@param {real} delay
function transition(_destiny, _delay = 0){
	var _t = instance_create_depth(0,0,-500,obj_transition);
	_t.destiny = _destiny;
	_t.delay = _delay;
}

