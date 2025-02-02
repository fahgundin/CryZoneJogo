draw_self()

if not instance_exists(obj_tree){
	if (global.vida < 5) and (global.vida > 0) and not instance_exists(obj_tree){
		draw_sprite(LifeEmpty,0,x, y)
		draw_sprite_ext(LifeFull,0,x, y,
		max(0,global.vida/global.vidamax),1,0,c_white,1);
	}



	if (armaselec[arma] = "arco") and (global.flechaspd != 0) {
		draw_sprite(ArrowEmpty,0,x, y)
		draw_sprite_ext(ArrowFull,0,x, y,
		max(0,global.flechaspd/global.flechaspdmax),1,0,c_white,1);
	}
}