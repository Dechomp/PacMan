var colisaoHori = place_meeting(x + hori * velocidade, y , objParede) or place_meeting(x + hori * velocidade, y , objCanto)
var colisiaoVertical =  place_meeting(x , y + vert * velocidade, objParede) or place_meeting(x , y + vert * velocidade, objCanto)


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
		
		ditanciaX = xPacMan - x
		ditanciaY = yPacMan - y
		
		if ditanciaX > 15 and  ! colisaoHoriDir{
			hori = 1
			vert = 0
		}
		else if colisaoHoriDir{
			if !colisiaoVertBaixo{
				vert = 1
			}
			else if ! colisiaoVertCima{
				vert = -1
			}
			hori = 0
		}
		
		else if ditanciaX < -15 and ! colisaoHoriEsq{
			hori = -1
			vert = 0
		}
		
		else if colisaoHoriEsq{
			if !colisiaoVertBaixo{
				vert = 1
			}
			else if ! colisiaoVertCima{
				vert = -1
			}
			hori = 0
		}
		
		
		else if ditanciaY > 15 and  ! colisiaoVertBaixo{
			hori = 0
			vert = 1
		}
		else if colisiaoVertBaixo{
			if !colisaoHoriEsq{
				hori = -1
			}
			else if ! colisaoHoriDir{
				hori = 1
			}
			vert = 0
		}
		
		
		else if ditanciaY < -15 and ! colisiaoVertCima{
			hori = 0
			vert = -1
		}	
		else if colisiaoVertCima{
			if !colisaoHoriEsq{
				hori = -1
			}
			else if ! colisaoHoriDir{
				hori = 1
			}
			vert = 0
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