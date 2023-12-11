Algoritmo Calculadora
	
	Escribir "Qué operación desea realizar?";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicación";
	Escribir "4. División";
	Escribir " ";
	
	Leer operacion;
	
	Escribir "Cuántos números desea operar (MAX 10) ?";
	Leer n;
	
	Escribir "Ingrese los números que va a operar";
	
	Dimension cantidadNumeros[n];
	
	Para i = 1 Hasta n Hacer
		Leer cantidadNumeros[i];
	FinPara
	
	Dimension numerosPares[n];
	invocarPares = numPar(cantidadNumeros, n, numerosPares);
	
	Segun operacion Hacer
		
		"1":
			Escribir suma(cantidadNumeros, n);
		"2":
			Escribir resta(cantidadNumeros, n);
		"3":
			Escribir "Cómo desea operar los números";
			Escribir "1. Multiplicar solo los números pares";
			Escribir "2. Multiplicación de todos los numeros";
			Leer opcionMultiplicacion;
			
			Si opcionMultiplicacion == "1" Entonces
				Escribir multiplicacionPar(numerosPares, n);
			SiNo
				Escribir multiplicacion(cantidadNumeros, n);
			FinSi
			
		"4":
			Escribir "Cómo desea operar los números";
			Escribir "1. Dividir solo los números pares";
			Escribir "2. Dividir de todos los numeros";
			Leer opcionDivision;
			
			Si opcionDivision == "1" Entonces
				Escribir divisionPar(numerosPares, n);
			SiNo
				Escribir division(cantidadNumeros, n);
			FinSi
			
		
	FinSegun

	
FinAlgoritmo

Funcion cont <- numPar (cantidadNumeros, n, numerosPares) 
	cont = 0;
	Para i = 1 Hasta n Hacer
		Si (cantidadNumeros[i] mod 2) == 0 Entonces
			numerosPares[i] = cantidadNumeros[i];
			cont = cont + 1;
		FinSi
	FinPara
FinFuncion


Funcion resultado <- suma (cantidadNumeros, n)
	resultado = 0;
	Para i = 1 Hasta n Hacer
		resultado = resultado + cantidadNumeros[i];
	FinPara
FinFuncion


Funcion resultado <- resta (cantidadNumeros, n)
	resultado = cantidadNumeros[1];
	Para i = 1 Hasta n Hacer
		resultado = resultado - cantidadNumeros[i];
	FinPara
FinFuncion


Funcion resultado <- multiplicacionPar (cantidadNumeros, n)
	resultado = 1;
	Para i = 1 Hasta n Hacer
		Si cantidadNumeros[i] <> 0 Entonces
			resultado = resultado * cantidadNumeros[i];
		FinSi
		
	FinPara
FinFuncion


Funcion resultado <- multiplicacion (cantidadNumeros, n)
	resultado = 1;
	Para i = 1 Hasta n Hacer
		resultado = resultado * cantidadNumeros[i];
	FinPara
FinFuncion


Funcion resultado <- division (cantidadNumeros, n)
	primero = cantidadNumeros[1];
	Para i = 2 Hasta n Hacer
		resultado = primero / cantidadNumeros[i];
	FinPara
FinFuncion


Funcion resultado <- divisionPar (cantidadNumeros, n)
	resultado = cantidadNumeros[1];;
	Para i = 2 Hasta n Hacer
		Si cantidadNumeros[i] <> 0 Entonces
			resultado = resultado / cantidadNumeros[i];
		FinSi
		
	FinPara
FinFuncion



