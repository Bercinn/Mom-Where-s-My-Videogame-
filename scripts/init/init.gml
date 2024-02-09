#macro mouse_gui_x device_mouse_x_to_gui(0)
#macro mouse_gui_y device_mouse_y_to_gui(0)
#macro SEC game_get_speed(gamespeed_fps)
#macro MIN (game_get_speed(gamespeed_fps)*60)

global.timer = MIN * 1.20;
