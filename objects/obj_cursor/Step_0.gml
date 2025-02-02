
if position_meeting(mouse_x,mouse_y,obj_connect) or position_meeting(mouse_x,mouse_y,obj_exit) or position_meeting(mouse_x,mouse_y,obj_options){
	 window_set_cursor(cr_handpoint)
} else {window_set_cursor(cr_default)}

if room != menu and room != rm_options and !global.pause {window_set_cursor(cr_none)}
if(room = rm_options){
	if position_meeting(mouse_x,mouse_y,obj_soundset) or position_meeting(mouse_x,mouse_y,obj_back){
		
		if(obj_soundset.my_own_pir) and (mouse_check_button(mb_left)){
			window_set_cursor(cr_drag)
		}else{
			window_set_cursor(cr_handpoint)
		}
	 
	} else {window_set_cursor(cr_default)}
}