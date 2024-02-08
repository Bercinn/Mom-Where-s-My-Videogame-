align_text(1, 1);
draw_set_font(fnt_menu);



draw_sprite_ext(spr_story_bg, cur_img, display_get_gui_width()/2, display_get_gui_height()/2, cur_scl, cur_scl, 0, -1, 1);

outline_draw_text_transformed(display_get_gui_width()/2,
display_get_gui_height() - string_height("I"), cur_txt, cur_scl, cur_scl,
0, ol_config(3, c_black, ,1,,,1));

align_text(0, 1);
draw_set_color(c_black);

draw_text(0,20,"Press Enter to start");



draw_text(0, 60, "Press SHIFT to autocomplete the page");

draw_set_default();
draw_set_font(-1);
align_text(-1, -1);
