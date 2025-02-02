
function colisao(){



if place_meeting(x+hspd,y,obj_wall){
	while(!place_meeting(x+sign(hspd),y,obj_wall)){
		x = x + sign(hspd)
	}
	 hspd=0
	if (vspd > 0){
		grv = 0.02
	}else{grv = 0.4}
	}else{grv = 0.4}
x = x + hspd

// vertical

if place_meeting(x,y+vspd,obj_wall){
 while(!place_meeting(x,y+sign(vspd),obj_wall)){
  y = y + sign(vspd)
 }
 vspd=0
}


if place_meeting(x,y+vspd,obj_plat) and vspd >= 0 and not key_baixo and platcooldown = 0 and global.platc = true and pulo > 0{

vspd=0
}
y = y + vspd


}