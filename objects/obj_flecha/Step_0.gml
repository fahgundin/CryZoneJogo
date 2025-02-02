


vspeed = vspeed + flechagrv

#region // POSIÇÃO DAS FLECHAS

if vspeed > 0 and hspeed < 0  {
image_angle =+ 180
}

if vspeed > 0 and hspeed > 0  {
image_angle =+ 0
}

if vspeed > 0 and sign(hspeed) < 0 and hspeed > 0-3  {
image_angle =+ 270
}

if vspeed > 0 and sign(hspeed) > 0 and hspeed < 3 {
image_angle =+ 270
}



if place_meeting(x,y,obj_wall){
	speed = 0
	vspdf -= 0.01
}

image_alpha = vspdf 

if vspdf = 0{
	instance_destroy()
}

#endregion

if place_meeting(x,y,obj_wall) and (global.dbflecha = 1){
global.dbflecha = 0
} else {
	global.dbflecha = 1}
	
global.danoflecha = speed/3
	

