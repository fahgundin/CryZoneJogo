
	if(keyboard_check_pressed(vk_escape)){

		global.pause = !global.pause
	}
		if(global.pause) and movimento > 0{
			movimento = movimento - 48
			
		}
		if!(global.pause) and movimento < 768{
			movimento = movimento + 48
			
		}
		
