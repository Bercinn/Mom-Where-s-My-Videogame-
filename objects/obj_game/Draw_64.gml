draw_set_text(1,1,fnt_menu, c_white);

var _gui_w = display_get_gui_width();
//var _gui_h = display_get_gui_height();

outline_draw_text_transformed(_gui_w/2, string_height("I"), "Faltam:  "+ string(show_time) + "  segundos!",
								1,1,0,ol_config(3,,,1,,,1));

draw_set_default();

