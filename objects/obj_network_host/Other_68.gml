var idd = async_load[? "id"]
var type = async_load[? "type"]

if (server == idd){
	if(type == network_type_connect){
		show_message("conectou")
	}else if(type == network_type_disconnect){
		show_message("desconectou")
	} 
}else{



}


