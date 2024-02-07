{ // YOU CAN CHANGE THESE //
	//obj_player.can_move = false;					// Don't let the player to move. Edit DrawGUI line 45 too.
	wrapped_scale		= true;						// Scaling textbox foresight or snap.
	maxwidth			= 288;						// Max lenght to textbox can reach.
	charspeed			= 0.8;						// Letters plament speed.
	scalespeed			= 0.5						// Textbox scaling speed.
	alpha_eraser		= 0.025;					// The power of erasure while disappearing.
	sound_delay			= 4							// How many milliseconds does a sound play? (When a letter spawns.)
	next_key			= vk_enter					// New page key.
	skip_key			= vk_shift					// Instant place all letters.
	res					= .9						// Resolition of whole textbox. (Between 1-4 recommended)
	font				= fnt_menu				// Font of text.
	textbox_sprite		= spr_textbox				// Nineslice textbox sprite.
	sound_fx			= snd_txtsans				// The sound effect will be played when an letters spawns.
}

{ // Do NOT delete or corrupt these:
	enum STATES {LIFE,OUT,DESTROY}
	state = STATES.LIFE;

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