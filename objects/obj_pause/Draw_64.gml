draw_set_alpha(0.5)
draw_set_color(c_black)
draw_rectangle(0,768,1366,movimento,0)
if(global.pause){
			if!(instance_exists(obj_soundset)){
				instance_create_layer(obj_camera.x/4,obj_camera.y,"tre",obj_soundset)
				
			}
		}else{
			if(instance_exists(obj_soundset)){
				instance_destroy(obj_soundset)
			}
		
		}