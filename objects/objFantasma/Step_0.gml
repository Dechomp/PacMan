//var colisaoHori = place_meeting(x + hori * velocidade, y , objParede) or place_meeting(x + hori * velocidade, y , objCanto)
//var colisiaoVertical =  place_meeting(x , y + vert * velocidade, objParede) or place_meeting(x , y + vert * velocidade, objCanto)

var colisaoHoriEsq = place_meeting(x + -1 * velocidade, y , objParede) or place_meeting(x + -1 * velocidade, y , objCanto)
var colisaoHoriDir = place_meeting(x + 1 * velocidade, y , objParede) or place_meeting(x + 1 * velocidade, y , objCanto)
var colisiaoVertCima =  place_meeting(x , y + -1 * velocidade, objParede) or place_meeting(x , y + -1 * velocidade, objCanto) 
var colisiaoVertBaixo =  place_meeting(x , y + 1 * velocidade, objParede) or place_meeting(x , y + 1 * velocidade, objCanto)

#region Movimentação
	xAnterior = x
	yAnterior = y

	
		
	
	
var colisaoHoriEsq = place_meeting(x + -1 * velocidade, y , objParede) or place_meeting(x + -1 * velocidade, y , objCanto)
var colisaoHoriDir = place_meeting(x + 1 * velocidade, y , objParede) or place_meeting(x + 1 * velocidade, y , objCanto)
var colisiaoVertCima =  place_meeting(x , y + -1 * velocidade, objParede) or place_meeting(x , y + -1 * velocidade, objCanto) 
var colisiaoVertBaixo =  place_meeting(x , y + 1 * velocidade, objParede) or place_meeting(x , y + 1 * velocidade, objCanto)

#region Estratégia
		xPacMan = objPacMan.x
		yPacMan = objPacMan.y
		
		
		if colisaoHoriEsq{
			
		}
		else if xPacMan < x{
			hori = -1
			vert = 0
		}
		
		else if colisaoHoriDir{
		
		}
		else if xPacMan > x{
			hori = 1
			vert = 0
		}
		else if xPacMan == x {
			if colisiaoVertCima{
		
			} else if yPacMan < y{
				vert = -1
				hori = 0	
			}
			if colisiaoVertBaixo{
		
			}
			else if yPacMan > y {
				vert = 1
				hori = 0
			}
		}
		
#endregion
	
	x += hori * velocidade
	y += vert * velocidade
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