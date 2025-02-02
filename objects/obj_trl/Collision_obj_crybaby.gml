
	ini_open("save.txt")
	ini_write_string("Jogador","arma1",obj_crybaby.armaselec[0])
	ini_write_string("Jogador","arma2",obj_crybaby.armaselec[1])
	ini_write_real("Jogador","vida",global.vida)
	ini_close()
	
	if(room == rm_01){
		room_goto(rm_02)
		ini_open("save.txt")
		ini_write_string("Jogador","arma1",obj_crybaby.armaselec[0])
		ini_write_string("Jogador","arma2",obj_crybaby.armaselec[1])
		ini_write_real("Jogador","vida",global.vida)
	ini_close()
	}
	if(room == rm_02){
		room_goto(rm_03)
		ini_open("save.txt")
		ini_write_string("Jogador","arma1",obj_crybaby.armaselec[0])
		ini_write_string("Jogador","arma2",obj_crybaby.armaselec[1])
		ini_write_real("Jogador","vida",global.vida)
	ini_close()
	}