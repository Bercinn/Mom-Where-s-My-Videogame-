draw_set_text(fa_center,fa_top,font);

var _txt = text[text_num]
_txt = string_wordwrap_width(_txt,maxwidth,"\n",false);
var txt = string_copy(_txt,1,charnum);
_txt = state == STATES.OUT ? txt : _txt;

var twidth = string_width(wrapped_scale ? txt : _txt)*res +space*2;
var theight = string_height(wrapped_scale ? txt : _txt)*res +space*2;
var _x = display_get_gui_width()/2 - twidth/2;
var _y = display_get_gui_height()-128;
var c  = draw_get_color();
var lenght = string_length(_txt);

current_xscale = lerp(current_xscale,twidth/spr_width, scalespeed);
current_yscale = lerp(current_yscale,theight/spr_height, scalespeed);

draw_sprite_ext(textbox_sprite,0, _x+(twidth/2),_y, current_xscale,current_yscale, 0,-1,alpha);
draw_text_transformed_color(_x+space/8+(twidth/2),_y-theight/2+space,txt, res,res, 0, c,c,c,c,alpha);

draw_set_default();

if state == STATES.LIFE and charnum != old_charnum and is_integer(delay_counter/sound_delay) audio_play_sound(sound_fx,0,false);
old_charnum = charnum
delay_counter++

if state == STATES.OUT
{
	alpha -= alpha_eraser
	charnum -= charspeed*1.25
	if alpha < 0
	{
		state = STATES.DESTROY
		alarm_set(0,4)
	}
}else charnum = charnum < string_length(text[text_num])+1 ? charnum+charspeed : charnum
charnum = floor(charnum)+1 == lenght and state == STATES.LIFE ? lenght+1 : charnum

//Update textbox
if spawn_delay <= 0 and keyboard_check_pressed(next_key)
{
	if charnum >= lenght
	{
		if text_num != array_length(text)-1 {text_num++; charnum = 0;}
		else {state = STATES.OUT; /*obj_player.can_move = true;*/}
	}
}else spawn_delay--
if spawn_delay <= 0 and keyboard_check_pressed(skip_key) charnum = lenght+1
