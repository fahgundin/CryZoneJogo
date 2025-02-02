
my_own_pir = false
scale = 2
xgap = 4*scale
leverw = 9*scale
leverh = 16*scale

push = false
percent = 100
if(room = rm_options){
	scale = 2
	image_xscale = scale
	image_yscale = scale
	leverxmin = x;
	leverxmax = x + sprite_get_width(spr_barempty)*scale;
	leverx = (leverxmin+(audio_group_get_gain(audiogroup_musics)*(leverxmax-leverxmin)));
}else{
	scale = 0.5
	image_xscale = scale
	image_yscale = scale
	leverxmin = x;
	leverxmax = x + sprite_get_width(spr_barempty)*scale;
	leverx = (leverxmin+(audio_group_get_gain(audiogroup_musics)*(leverxmax-leverxmin)));
}


