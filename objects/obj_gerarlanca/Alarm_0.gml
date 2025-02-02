if (ativado = true){
sort = irandom_range(1,4)
sort2 = irandom_range(5,8)
sort3 = irandom_range(2,5)

if (sort ==4){
	instance_create_layer(x,y,"ataques",obj_lanca)
	alarm[0] = room_speed*sort2
} else {alarm[0] = room_speed*sort3}
}
