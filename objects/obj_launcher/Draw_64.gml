
if(!drawdelay)
{
draw_set_font(fnt_menu);
draw_set_color(c_black);


draw_set_text(fa_center,fa_middle,fnt_menu)

draw_text(room_width/2,64,"Press number 1 to start");

}
else
{
draw_set_font(fnt_menu);
draw_set_color(c_black);
//desenhando text de tecla
draw_set_text(fa_center,fa_middle,fnt_menu)

draw_text(room_width/2,64,"Press Enter for next sentence");

}
draw_set_default();
