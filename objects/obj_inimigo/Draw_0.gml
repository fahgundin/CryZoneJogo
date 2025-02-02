draw_self();


draw_set_color(c_white )
if (chcdwn >0) and (hspd!=0){
	draw_text(x-10,y-30,"!")
}

if (chcdwn >0) and (hspd=0) and distance_to_object(obj_crybaby) > 5{
	draw_text(x,y-30,"?")
}

