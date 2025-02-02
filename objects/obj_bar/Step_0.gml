
percent = (leverx - leverxmin/leverxmax -leverxmin)/(leverxmax -leverxmin)
//MEU PROPRIO POINT IN RECTANGLE JA QUE ESSA JOSSA NAO FUNCIONA
var my_own_pir = false
if((mouse_x >= leverx-xgap) and (mouse_x <= leverx+leverw+xgap)){
	my_own_pir = true
}


if(mouse_x <= leverxmax and mouse_x > leverxmin) and my_own_pir and mouse_check_button(mb_left){
	push = true
	
}



