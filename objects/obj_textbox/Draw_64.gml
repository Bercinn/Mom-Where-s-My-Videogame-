draw_set_text(fa_center,fa_top,font);

//ingnore as variaveis são muitas

var _txt = text[text_num] //criando sistema de dialogos
_txt = string_wordwrap_width(_txt,maxwidth,"\n",false);
var txt = string_copy(_txt,1,charnum);
_txt = state == STATES.OUT ? txt : _txt; //se o estado for igual a acabou ele vai ler o if da linha 28

var twidth = string_width(wrapped_scale ? txt : _txt)*res +space*2;
var theight = string_height(wrapped_scale ? txt : _txt)*res +space*2;
var _x = display_get_gui_width()/2 - twidth/2;
var _y = display_get_gui_height()-70;
var c  = draw_get_color(); //variavel de cor
var lenght = string_length(_txt); //variavel de definição de texto

current_xscale = lerp(current_xscale,twidth/spr_width, scalespeed); //cuidando da scale do texto se quiser alterar va em create
current_yscale = lerp(current_yscale,theight/spr_height, scalespeed); //mesma coisa

draw_sprite_ext(textbox_sprite,0, _x+(twidth/2),_y, current_xscale,current_yscale, 0,-1,alpha);
draw_text_transformed_color(_x+space/8+(twidth/2),_y-theight/2+space,txt, res,res, 0, c,c,c,c,alpha);

draw_set_default();

if state == STATES.LIFE and charnum != old_charnum and is_integer(delay_counter/sound_delay)// audio_play_sound(sound_fx,0,false); son desativado
old_charnum = charnum
delay_counter++

if state == STATES.OUT  //se acabou o dialogo transição de dialogo com alpha escurecendo aos poucos
{
	alpha -= alpha_eraser
	charnum -= charspeed*1.25
	
	if alpha < 0 //se já escureceu um bastante destroy esse obj
	{
		state = STATES.DESTROY //destruindo
		alarm_set(0,4)
	}
}
else charnum = charnum < string_length(text[text_num])+1 ? charnum+charspeed : charnum //verificando se já acabou o texto se não ele cria outra page
charnum = floor(charnum)+1 == lenght and state == STATES.LIFE ? lenght+1 : charnum

//atualizando o textbox
if spawn_delay <= 0 and keyboard_check_pressed(next_key) //verificando se pode aperta para a proxima frase
{
	if charnum == lenght+1 //indo pra proxima pagina de dialogo
	{
	    global.cur_img++;//mudando os sprites
		if text_num != array_length(text)-1 {text_num++; charnum = 1;} //indo pra proxima pagina de dialogo
		
		else  //fim e ele vai pra outra cena
		{
		state = STATES.OUT
        transition(rm_game); //transição
		}
		/*obj_player.can_move = true;*/
		
	if(global.cur_img == 3)//proibindo de passar da 3º sprite
    {
       global.cur_img--; //reduzindo se passou
    }
	
	}
}
else spawn_delay-- // diminuindo delay
if spawn_delay <= 0 and keyboard_check_pressed(skip_key) charnum = lenght+1 //pulando maquina de texto
