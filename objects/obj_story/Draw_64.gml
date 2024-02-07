align_text(1, 1);
draw_set_font(fnt_menu);
draw_set_color(c_black);

outline_draw_text_transformed(display_get_gui_width()/2, display_get_gui_height()/2, cur_text, .5, .5, 0, ol_config(2,c_white,,1,,,1));

draw_set_color(-1);
draw_set_font(-1);
align_text(-1, -1);
