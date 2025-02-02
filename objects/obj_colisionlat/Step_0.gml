
x = obj_crybaby.x - w/2
y = obj_crybaby.y + h/2 - 1

if not(place_meeting(x,y,obj_plat)){global.platc = false}
else {global.platc = true}

