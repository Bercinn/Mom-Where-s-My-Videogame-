if(!can_click){
	var _gui_w = display_get_gui_width();
	var _gui_h = display_get_gui_height();
	
	draw_set_text(1,1,fnt_menu,c_white);
	outline_draw_text(_gui_w/2, _gui_h-string_height("I"), "Aperte Enter para próxima fase!");
	draw_set_default();
}
