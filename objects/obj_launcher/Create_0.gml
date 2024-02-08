//variaveis
global.cur_img = 0; //variavel de spries do bg da cena (não mexa pfv)
image_bg = spr_story_bg; //variavel do background
drawdelay = false; //delay do comando das teclas ver mais no draw gui

//variavel do texto mexa se tiver que colocar mais
var str = 
[
	"É, Juninho fez besteira... de novo.",
	"E Sua mãe condenou ele a ficar sem celular pelo resto da vida!",
	"Mas ele é corajoso (ou burro) e não liga para o castigo.",
	"Então ele decide procurar o celular, que está escondido."
];

textbox_create(str); //criando textbox
alarm[0] = 1; //setando a variavel de delay do draw pra zero pra atualizar o texto de tecla


