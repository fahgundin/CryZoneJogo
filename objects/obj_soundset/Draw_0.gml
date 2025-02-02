
draw_self()

if((mouse_x >= leverx-xgap) and (mouse_x <= leverx+leverw+xgap)){
	my_own_pir = true
}
draw_sprite_ext(spr_barfull,0,x,y,percent*scale,1*scale,0,c_white,1)
draw_sprite_ext(spr_alavanca,0,leverx,y,scale,scale,0,c_white,1)
draw_text(x+x/2,y-20,int64((percent*100)))


