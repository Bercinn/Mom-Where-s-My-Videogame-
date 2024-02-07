var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_set_alpha(alp);
draw_set_color(c_black);

draw_rectangle(0, 0, _gui_w, _gui_h, false);

draw_set_color(-1);
draw_set_alpha(1);
