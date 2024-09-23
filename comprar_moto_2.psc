Algoritmo comprar_moto_2
	Definir tienesDinero, buenaOferta Como Logico
	Definir entradaDinero, entradaOferta Como Caracter
	
	Repetir
		Escribir "¿Tienes suficiente dinero para comprar la moto? (verdadero/falso): "
		Escribir "Debe ingresar un valor (verdadero/falso)."
		
	Hasta Que entradaDinero = "Verdadero" o entradaDinero = "Falso"
	
	Si entradaDinero = "Verdadero" Entonces
		tienesDinero = Verdadero
	SiNo
		tienesDinero = Falso
	Fin Si
	
	Repetir
		Escribir "¿Hay una buena oferta en la moto? (Verdadero/Falso): "
		Leer entradaOferta
	Hasta Que entradaOferta = "Verdadero" o entradaOferta = "Falso"
	
	Si entradaOferta = "Verdadero" Entonces
		buenaOferta = Verdadero
	SiNo
		buenaOferta = Falso
	Fin Si
	
	Si tienesDinero o buenaOferta Entonces
		Escribir "¡Puedes comprar la moto!"
	SiNo
		Escribir "No puedes comprar la moto en este momento"
	Fin Si
FinAlgoritmo
