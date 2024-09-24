Proceso AgenciaDeViajes
    Definir destino, dias Como Entero
    Definir continuar Como Caracter
    Definir costoPorDia, costoTotal, descuento Como Real
    continuar = "si"
    
    Mientras continuar = "si"
        Escribir "Bienvenido a la Agencia de Viajes"
        
        //Menu que se repite hasta que elija una de las 3 opciones 
        Repetir
            Escribir "Seleccione su destino:"
            Escribir "1. Playa ($500.000 por día)"
            Escribir "2. Montaña ($400.000 por día)"
            Escribir "3. Ciudad ($300.000 por día)"
            Leer destino
            
            Segun destino Hacer		//Una opcion multiple que funciona como un switch 
                1: costoPorDia = 500000
					Escribir "Su destino es: Playa."
                2: costoPorDia = 400000
					Escribir "Su destino es: Montaña."
                3: costoPorDia = 300000
					Escribir "Su destino es: Ciudad."
                De Otro Modo:
					Escribir "Opcion invalida. Intente nuevamente."
					destino = 0 //En caso de seleccionar o colocar un dato incorrecto se seguira repitiendo 
            FinSegun
        Hasta Que destino >= 1 y destino <= 3
        
        //Ingreso y validacion de los dias de estancia
        Repetir
            Escribir "Ingrese el número de días de estancia (mayor que 0):"
            Leer dias
            Si dias <= 0 Entonces
                Escribir "El número de días debe ser mayor a 0."
            FinSi
        Hasta Que dias > 0
        
        //Aqui se calcula el costo total y enc caso de un descuento se muestra el descuento en pantalla
        costoTotal = costoPorDia * dias
        descuento = 0
        
        Si dias >= 7 Entonces
            descuento = costoTotal * 0.15
        Sino
            Si dias >= 3 Entonces
                descuento = costoTotal * 0.10
            FinSi
        FinSi
        
        costoTotal = costoTotal - descuento
        
        Escribir "El costo total de su viaje es: $", costoTotal
        Si descuento > 0 Entonces
            Escribir "Se ha aplicado un descuento de: $", descuento
        FinSi
        
        //preguntar si desea realizar otra reserva y validar el dato que ingrese el usuario
		Repetir
			Escribir "¿Desea realizar otra reserva? (si/no)"
			Leer continuar
			Si continuar <> "si" Y continuar <> "no" Y continuar = "" Entonces
				Escribir "Porfavor digite si o no"
			Fin Si
			
		Hasta Que continuar = "si" o continuar = "no"
        
    FinMientras
    
    Escribir "Gracias por usar la agencia de viajes ¡Buen viaje!"
FinProceso