cam = view_camera[0];

scale = {
	cam : 3,
	win : 2,
	gui : 1,
};

cam_w = 1920/scale.cam;
cam_h = 1080/scale.cam;

camera_set_view_size(cam, cam_w, cam_h);
display_set_gui_size(cam_w*scale.gui, cam_h*scale.gui);
window_set_size(cam_w*scale.win, cam_h*scale.win);
alarm[0] = 1;

switch_fullscreen = function(){
	if(keyboard_check_pressed(vk_f11)){
		window_set_fullscreen(!window_get_fullscreen());
		alarm[0] = 1;
	}
};
