y = y + sin(timer * 0.03) * 0.4
x = x + sin(timer * 0.05) * 0.3

timer ++;

image_xscale = 0.5
image_yscale = 0.5

if(place_meeting(x,y,obj_crybaby)){
	vir = sign(ptfx - x);
	hspeed = vir * 1
	viry = sign(ptfy - y);
	vspeed = viry * 1
	if not(place_meeting(x,y,obj_walljump)){voltar = true}
}

if(place_meeting(x,y,obj_walljump)){
	hspeed = 0
	vspeed = 0
	alarm[1] = room_speed*6
	
}

if(place_meeting(x,y,obj_walljump2)) and voltar == true{
	hspeed = 0
	vspeed = 0
	voltar = false
	sprite_index = spr_maoaberta
}

if (place_meeting(x,y,obj_ataque)) and cooldown = 0{
	cooldown = 20;
	obj_hannya.vidaboss -= 10
	} 
	
if (place_meeting(x,y,obj_soco)) and cooldown = 0{
	cooldown = 20;
	obj_hannya.vidaboss -= 1
} 