if xAnterior < x{
	draw_sprite(sprFantasma, 3, x, y)//Esquerda
}


else if xAnterior > x{
	draw_sprite(sprFantasma, 2, x, y)//Direita
}


if yAnterior < y{
	draw_sprite(sprFantasma, 4, x, y) // Baixo
}
else if  yAnterior > y{
	draw_sprite(sprFantasma, 1, x, y) // Cima
}