function textbox_create(text,force = true,space = 32)
{
	text = is_array(text) ? text : [text]
	if instance_exists(obj_textbox)
	{
		if force
		{
			instance_destroy(obj_textbox);
			var textbox = instance_create_depth(0,0,0,obj_textbox);
			textbox.text = text;
			textbox.space = space;
		}
	}
	else
	{
		var textbox = instance_create_depth(0,0,0,obj_textbox);
		textbox.text = text;
		textbox.space = space;	
	}
}

function textbox_exitst()
{
	return instance_exists(obj_textbox)
}

function textbox_destroy()
{
	return instance_exists(obj_textbox) ? instance_destroy(obj_textbox) : 0
}

// Other functions for textbox
function draw_set_text(halign,valign,font,color = -1)
{
	draw_set_halign(halign);
	draw_set_valign(valign);
	draw_set_font(font);
	draw_set_color(color)
}

function draw_set_default()
{
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
	draw_set_color(-1);
}

function string_wordwrap_width(text, width, breaker, split)
{
    var pos_space, pos_current, text_current, text_output;
    pos_space = -1;
    pos_current = 1;
    text_current = text;
    if (is_real(breaker)) breaker = "#";
    text_output = "";
    while (string_length(text_current) >= pos_current) {
        if (string_width(string_copy(text_current,1,pos_current)) > width) {
            if (pos_space != -1) {
                text_output += string_copy(text_current,1,pos_space) + string(breaker);
                text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
                pos_current = 1;
                pos_space = -1;
            } else if (split) {
                text_output += string_copy(text_current,1,pos_current-1) + string(breaker);
                text_current = string_copy(text_current,pos_current,string_length(text_current)-(pos_current-1));
                pos_current = 1;
                pos_space = -1;
            }
        }
        pos_current += 1;
        if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
    }
    if (string_length(text_current) > 0) text_output += text_current;
    return text_output;
}

function is_integer(val)
{
	return val == floor(val)
}