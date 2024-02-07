cur_scl = lerp(cur_scl, 1, .2);

var _tsize = array_length(txt);
var _ssize = string_length(txt[page]);

if(letter < _ssize){
	letter += .3;
}
cur_txt = string_copy(txt[page], 0, letter);

if(letter >= _ssize && page < _tsize-1){
	if(keyboard_check_pressed(vk_enter)){
		page++;
		letter = 0;
		cur_scl = .1;
		cur_img++;
	}
}
cur_img = clamp(cur_img, 0, sprite_get_number(spr_story_bg)-1);

if(page == _tsize-1 && letter >= _ssize){
	if(keyboard_check_pressed(vk_enter)){
		transition(rm_menu);
	}
}
