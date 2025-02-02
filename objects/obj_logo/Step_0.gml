

if aumento = false {
	aumentar += 0.005
}
if aumento = true {
	aumentar -= 0.005
}
if aumentar = 3.5 and aumento = true{ aumento = false}
if aumentar = 4.5 and aumento = false{ aumento = true}

y = y + sin(timer * 0.03) * 0.4

timer ++;

image_xscale = aumentar
image_yscale = aumentar

image_angle = girar


