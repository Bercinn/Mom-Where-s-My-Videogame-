draw_sprite_ext(image_bg, global.cur_img, display_get_gui_width()/2, display_get_gui_height()/2, 1, 1, 0, -1, 1);

draw_set_text(fa_center,fa_middle,fnt_story)

var _txt = ["Aperte Espaço para ir para próxima página",
			"Aperte Shift para auto completar a página"];
outline_draw_text_transformed(100, string_height("I")/2, _txt[0], .5,.5,0, ol_config(3,, 1, 1,,,1));
outline_draw_text_transformed(100, (string_height("I")/2)*2 + 5, _txt[1], .5,.5,0, ol_config(3,c_black,,1,,,1));

draw_set_default();
