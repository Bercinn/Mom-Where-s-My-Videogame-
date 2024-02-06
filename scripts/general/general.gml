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
