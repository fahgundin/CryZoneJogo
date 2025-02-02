spd= 2;
hspd = 0;
spdrun = 5;
vspd = 0;
grv = 0.4;
pulo = 1;

knockback = sign(hspd)
global.cooldownkb = 0
cooldownataque = 0
alarm[0] = 5*room_speed
stamina = 150;
staminax = 150;
opacidadep = 1
arma = 0
ini_open("save.txt")
	armaselec[0] = ini_read_string("Jogador","arma1",0)
	armaselec[1] = ini_read_string("Jogador","arma2",0)
ini_close()
cooldownflecha = 0;
global.flechaspd = 0;
global.flechaspdmax = 16;
flechaspd = global.flechaspd;
global.vida = 5;
global.vidamax = 5;
platcooldown = 0;
cooldownsegatq = false
opacidade = 1
deit = false
global.controle = -1 
if(room == rm_02){
	arma = 0
	image_angle = 90
	deit = true
}
if ( room == rm_03){
	arma = 0
	ini_open("save.txt")
	armaselec[0] = ini_read_string("Jogador","arma1",obj_crybaby.armaselec[0])
	armaselec[1] = ini_read_string("Jogador","arma2",obj_crybaby.armaselec[1])
	ini_write_real("Jogador","vida",global.vida)
	
	ini_close()
}