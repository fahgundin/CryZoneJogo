
if global.flechaspd > global.flechaspdmax{
	draw_sprite(ArrowEmpty,0,x, y)
	draw_sprite_ext(ArrowFull,0,x, y,
	max(0,global.flechaspd/global.flechaspdmax),1,0,c_white,1);
}