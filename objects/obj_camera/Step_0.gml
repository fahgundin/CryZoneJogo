if room == rm_03{
	x = room_width/2
	y = room_height/2
} else {

if obj_crybaby.x > 260 {
	x = lerp(x, target_.x,0.3);
} else {
	x = 260
}

if obj_crybaby.y > 130 {
	y = lerp(y, target_.y-height_/4,0.7);
	
} else {
	y = height_/4
}

camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2.5);

if hspeed > 0 {
	y = y + sin(timer * 0.03) * 0.4
	timer ++;
}

}