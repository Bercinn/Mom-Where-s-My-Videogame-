{ // YOU CAN CHANGE THESE //
	//obj_player.can_move = false; //proibindo player de mexer coloquei se o player ficar na mesma room				
	wrapped_scale		= true;						// Dimensionamento da previsão ou snap da caixa de texto.
	maxwidth			= 288;						// maximo de letras (não importa muito mais criei pra muita coisa so ingnore)
	charspeed			= 0.6;						// velocidade das letras
	scalespeed			= 0.5						// scala do Textbox ta ligado né
	alpha_eraser		= 0.025;					// alpha do texto ingnore tbm ta otimo assim
	sound_delay			= 4							// audio das letras em milissegundos (se mexer e de merda mn...)
	next_key			= vk_space					// tecla pra proxima frase
	skip_key			= vk_shift					// para pular a maquina de texto e ir pro final
	res					= .9						//resolução do textbox. (entre 1-4 recomendo)
	font				= fnt_menu				    // Font para o texto.
	textbox_sprite		= spr_textbox				// sprite do textbox. (essa tá otima viu)
	sound_fx			= noone		                // o son efeito para as letras quando spawnarem.
}

{ // isso daqui não e nada (não mexer são mais especificas)
	enum STATES {LIFE,OUT,DESTROY}
	state = STATES.LIFE;
	
    cur_img = 0;
	charnum = 1;
	old_charnum = 0;
	current_xscale = 1;
	current_yscale = 1;
	text_num = 0;
	alpha = 1;
	delay_counter = 0;
	spawn_delay = 4;
	spr_width = sprite_get_width(textbox_sprite);
	spr_height = sprite_get_height(textbox_sprite);
}