if(letter <= string_length(txt[page])){
	letter += .3;
}


if(letter >= string_length(txt[page])){
	if(keyboard_check_pressed(vk_enter) && !(page >= array_length(txt)-1)){
		page++;
		letter = 0;
	}
}

if(page >= array_length(txt)-1 && letter >= string_length(txt[page])){
	if(keyboard_check_pressed(vk_enter)){
		transition(rm_menu);
	}
}

cur_text = string_copy(txt[page], 0, letter);

//letter = clamp(letter, 0, string_length(txt[page]));
//page = clamp(page, 0, array_length(txt)-1);

//show_debug_message("Letter: "+string(letter));
//show_debug_message("Page: "+string(page));
