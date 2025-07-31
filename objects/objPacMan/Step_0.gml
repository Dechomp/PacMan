#region Movimentação
	//Setas
	setaCima = keyboard_check(vk_up)
	setaBaixo =keyboard_check(vk_down)
	setaDir = keyboard_check(vk_right)
	setaEsq = keyboard_check(vk_left)
	
	//Teclas
	
	teclaCima =	keyboard_check(ord("W"))
	teclaBaixo = keyboard_check(ord("S"))
	teclaDir = keyboard_check(ord("D"))
	teclaEsq = keyboard_check(ord("A"))
	
	
	moviHorizontal = (teclaDir or setaDir) - (teclaEsq or setaEsq)
	
	
	
	moviVertical = (teclaBaixo or setaBaixo) - (setaCima or teclaCima)
	
	if moviHorizontal == -1 or moviHorizontal == 1{
		hori = moviHorizontal
		image_xscale = sign(moviHorizontal)
		image_angle = 0
		vert = 0
	}
	
	else if moviVertical == -1 or moviVertical == 1{
		vert = moviVertical
		
		if image_xscale == -1{
			image_angle = 270 * moviVertical * -1
		}
		else{
			image_angle = 90 * moviVertical * -1
		}
		
		hori = 0
	}
	
	
	
	x += velocidade * hori
	y += velocidade * vert
	
	
	
#endregion

#region Teleporte
	if x <= 0{
		x = 1376
	}
	else	if x >= 1376{
		x = 0
	}
	
	if y <= 0{
		y = 768
	}
	else	if y >= 768{
		y = 0
	}
		
	
#endregion

#region Colisão
//Se a colisão acontecer
//Enquanto a colisão não pare de acontecer, cancela a movitação	
	
	var colisaoHori = place_meeting(x + hori * velocidade, y , objParede) or place_meeting(x + hori * velocidade, y , objCanto)
	var colsiaoVertical =  place_meeting(x , y + vert * velocidade, objParede) or place_meeting(x , y + vert * velocidade, objCanto)
	if colisaoHori{
		
		hori = 0
		
		x += velocidade * moviHorizontal * -1
		
	}
	
	if colsiaoVertical{
		vert = 0
		
		y += velocidade * moviVertical * -1
	}

#endregion