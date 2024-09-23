Algoritmo comprar_moto
	Definir tienesDinero, buenaOferta Como Logico
	Definir entradaDinero, entradaOferta Como Caracter
	
	Escribir "¿Tienes suficiente dinero para comprar la moto? (si/no): "
	leer entradaDinero 

	Si entradaDinero <> "si"  Y entradaDinero <> "no" Y entradaDinero = "" Entonces
		Escribir "Porfavor digite si o no"
		
	SiNo
		Escribir "¿Hay una buena oferta en la moto? (si/no): "
		leer entradaOferta 
		Si entradaOferta <> "si"  Y entradaOferta <> "no" Y entradaOferta = "" Entonces
			Escribir "Porfavor digite si o no"
		SiNo
			
			Si entradaDinero = "si" Y entradaOferta = "si" Entonces
				tienesDinero = Verdadero
				buenaOferta = Verdadero
			SiNo
				Escribir "No tienes dinero, no puedes comprar la moto"
			Fin Si
				Si tienesDinero o buenaOferta Entonces
					Escribir "¡Puedes comprar la moto!"
				SiNo
					Escribir "No puedes comprar la moto"
				Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo
