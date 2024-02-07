menu_op = ["Jogar", "Créditos", "Sair"];

op_len = array_length(menu_op);

op_scl[op_len-1] = 0;

draw_menu = function(){
	draw_set_font(fnt_menu);
	align_text(1, 1);
	
	var _gui_w = display_get_gui_width();
	var _gui_h = display_get_gui_height();
	
	var _ds = 1;
	var _ds_inc = 1.2;
	
	for(var i = 0; i < op_len; i++){
		var _hstr = (string_height("I")+8)*_ds;
		var _wstr = string_width(menu_op[i]);
		
		var _x1 = _gui_w/2 - _wstr/2;
		var _y1 = _gui_h/2 - _hstr/2 + _hstr*i;
		var _x2 = _gui_w/2 + _wstr/2;
		var _y2 = _gui_h/2 + _hstr/2 + _hstr*i;
		
		if(point_in_rectangle(mouse_gui_x, mouse_gui_y, _x1,_y1,_x2,_y2)){
			op_scl[i] = lerp(op_scl[i], _ds_inc, .15)+abs(sin_wave(.05,2));
			if(mouse_check_button_pressed(mb_left)){
				switch(menu_op[i]){
					case menu_op[0]:
						op_scl[0] = _ds;
						transition(rm_story);
					break;
					
					case menu_op[1]:
						op_scl[1] = _ds;
						show_message("Creditos");
					break;
					
					case menu_op[2]:
						op_scl[2] = _ds;
						game_end();
					break;
				}
			}
		}else{
				op_scl[i] = lerp(op_scl[i], _ds, .15);
			}
		
		outline_draw_text_transformed(_gui_w/2, _gui_h/2+_hstr*i, menu_op[i], op_scl[i], op_scl[i], 0, ol_config(3,c_black,,1,,,1));
	}
	
	var _name = "Mom, Where's My Cellphone?";
	outline_draw_text_transformed(_gui_w/2, 50+sin_wave(5,2,1), _name, 1.5,1.5, sin_wave(1,1,1), ol_config(3,c_black,,1,,,1));
	
	align_text(-1, -1);
	draw_set_font(-1);
};
