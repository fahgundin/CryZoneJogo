sort = irandom_range(8,17)
sprite_index = spr_maofechada
instance_create_layer(x,y,"HUD",obj_flechaatingido)
vir = sign(obj_crybaby.x - x);
hspeed = vir * 7
viry = sign(obj_crybaby.y - y);
vspeed = viry * 7
alarm[0] = room_speed * sort

