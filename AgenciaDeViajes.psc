Proceso AgenciaDeViajes
    Definir destino, dias Como Entero
    Definir continuar Como Caracter
    Definir costoPorDia, costoTotal, descuento Como Real
    continuar = "si"
    
    Mientras continuar = "si"
        Escribir "Bienvenido a la Agencia de Viajes"
        
				//ciclo de repeticion hasta que el usuario dijite un dato correcto
        Repetir
            Escribir "Seleccione su destino: "
            Escribir "1. Playa ($500.000 por dia)"
            Escribir "2. Montaña ($400.000 por dia)"
            Escribir "3. Ciudad ($300.000 por dia)"
            Leer destino
            
            Segun destino Hacer		//Menu de opciones para el destino, funciona como un "switch"
                1: costoPorDia = 500000
					Escribir "Su destino es: Playa"
                2: costoPorDia = 400000
					Escribir "Su destino es: Montaña"
                3: costoPorDia = 300000
					Escribir "Su destino es: Ciudad"
                De Otro Modo:
					Escribir "Opción inválida. Intente nuevamente."
					destino = 0			// si dijita un dato no valido, reinicia la variable, asi se seguira repitiendo el ciclo
            FinSegun
        Hasta Que destino >= 1 y destino <= 3
        
        //Ingreso y validacion de los dias de estancia
        Repetir
            Escribir "Ingrese el número de días de estancia: "
            Leer dias
            Si dias <= 0 Entonces
                Escribir "El numero de dias debe ser mayor a 0."
            FinSi
        Hasta Que dias > 0
        
        //Aqui calculamos el costo total del viaje y tamb
        costoTotal = costoPorDia * dias
        
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
        
        //vamos a preguntar si desea hacer otra reserva
		Repetir
			Escribir "¿Desea realizar otra reserva? (si/no)"
			Leer continuar
			Si continuar <> "si" Y continuar <> "no" Y continuar = "" Entonces
				Escribir "Porfavor escribir si o no"
			Fin Si
			
		Hasta Que continuar = "si" o continuar = "no"
		
    FinMientras
    
    Escribir "Gracias por usar la Agencia de Viajes. ¡Buen viaje!"
FinProceso
