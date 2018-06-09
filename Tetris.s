####################################################################################################################
####################################################################################################################
################# PRÁCTICA DE PROGRAMACIÓN EN ENSAMBLADOR MIPS R2000 CON EL SIMULADOR PCSPIM 1.0 ###################
################################################## TETRIS ##########################################################
####################################################################################################################

####################################################################################################################
############################################# SEGMENTO DE DATOS ####################################################
####################################################################################################################

.data
tablero: 	.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			.byte 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
			
tablero_prov: 	.space 200
tablero_print: 	.space 200
piezas_x: 		.byte 2, 2, 2, 2					# Cuadrado
				.byte 3, 2, 3, 2					# 2
				.byte 3, 2, 3, 2					# S
				.byte 2, 3, 2, 3					# L
				.byte 2, 3, 2, 3					# L invertida
				.byte 3, 2, 3, 2					# T
				.byte 1, 4, 1, 4					# Palo
				.byte 3, 2, 3, 2					# C
				.byte 2, 2, 2, 2					# Cuadrado sin esquina
	
piezas_y: 		.byte 2, 2, 2, 2					# Cuadrado
				.byte 2, 3, 2, 3					# 2
				.byte 2, 3, 2, 3					# S
				.byte 3, 2, 3, 2					# L
				.byte 3, 2, 3, 2					# L invertida
				.byte 2, 3, 2, 3					# T
				.byte 4, 1, 4, 1					# Palo
				.byte 2, 3, 2, 3					# C
				.byte 2, 2, 2, 2					# Cuadrado sin esquina
					
############################################### PIEZA CUADRADO #####################################################
####################################################################################################################	
pieza0:			.byte 1, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
pieza0_giro_1:	.byte 1, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza0_giro_2:	.byte 1, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza0_giro_3:	.byte 1, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
								
								
#################################################### PIEZA 2 #######################################################
####################################################################################################################							
pieza1:			.byte 1, 1, 0, 0
				.byte 0, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza1_giro_1:	.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0

pieza1_giro_2:	.byte 1, 1, 0, 0
				.byte 0, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza1_giro_3:	.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0


################################################### PIEZA S ########################################################
####################################################################################################################
pieza2:			.byte 0, 1, 1, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
pieza2_giro_1:	.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0
								
pieza2_giro_2:	.byte 0, 1, 1, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
pieza2_giro_3:	.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0
								
								
#################################################### PIEZA L #######################################################
####################################################################################################################
pieza3:			.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
								
pieza3_giro_1:	.byte 1, 1, 1, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza3_giro_2:	.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0

pieza3_giro_3:	.byte 0, 0, 1, 0
				.byte 1, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

								
								
################################################# PIEZA L INVERSA ##################################################
####################################################################################################################
pieza4:			.byte 0, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0

pieza4_giro_1:	.byte 1, 0, 0, 0
				.byte 1, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza4_giro_2:	.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0

pieza4_giro_3:	.byte 1, 1, 1, 0
				.byte 0, 0, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0


#################################################### PIEZA T #######################################################
####################################################################################################################
pieza5:			.byte 0, 1, 0, 0
				.byte 1, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
pieza5_giro_1:	.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0

pieza5_giro_2:	.byte 1, 1, 1, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza5_giro_3:	.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0

								
################################################### PIEZA PALO #####################################################
####################################################################################################################								
pieza6:			.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
								
pieza6_giro_1:	.byte 1, 1, 1, 1
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza6_giro_2:	.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 0, 0, 0

pieza6_giro_3:	.byte 1, 1, 1, 1
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

								
								
#################################################### PIEZA C #######################################################
####################################################################################################################								
pieza7: 		.byte 1, 0, 1, 0
				.byte 1, 1, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
								
pieza7_giro_1:	.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0

pieza7_giro_2:	.byte 1, 1, 1, 0
				.byte 1, 0, 1, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza7_giro_3:	.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0		
				
############################################### PIEZA CUADRADO SIN ESQUINA #########################################
####################################################################################################################								
pieza8: 		.byte 1, 1, 0, 0
				.byte 1, 0, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0
			
pieza8_giro_1:	.byte 1, 1, 0, 0
				.byte 0, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza8_giro_2:	.byte 0, 1, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0

pieza8_giro_3:	.byte 1, 0, 0, 0
				.byte 1, 1, 0, 0
				.byte 0, 0, 0, 0
				.byte 0, 0, 0, 0				
		
###################################################################################################################			
num_piezas: .byte 9
tam_piezas: .byte 16
y:			.byte 0
x:			.byte 4
filas:		.byte 20
columnas:	.byte 10
pieza_giro:	.byte 0

mens_menu:			.asciiz "BIENVENIDO AL JUEGO TETRIS EN PCSPIM\n"
mens_prin1: 		.asciiz "\n1. Nuevo Juego\n"
mens_prin2: 		.asciiz "2. Partida de Nivel\n"
mens_prin3: 		.asciiz "3. Ver Ranking\n"
mens_prin4: 		.asciiz "4. Salir\n\n"
mens_error:			.asciiz "\n¡¡ERROR!! Opcion Incorrecta.\nPor favor, introduzca un numero valido.\n"
error_columna: 		.asciiz "\n¡¡ERROR!! Fin de Columna.\nPor favor, realize otro movimiento.\n"
error_fila: 		.asciiz "\n¡¡ERROR!! Fin de Fila.\nPor favor, realize otro movimiento.\n"
error_giro: 		.asciiz "\n¡¡ERROR!! Giro no valido.\nPor favor, realize otro movimiento.\n"
error_choca: 		.asciiz "\n¡¡CUIDADO!! Ha chocado con una pieza fija.\nPor favor, realize otro movimiento.\n"
mens_nivel:			.asciiz "\nIntroduzca el nivel al nivel que desea jugar (0-20):\n"

dificultad:			.word 600000
base:				.word 20000
lineas:				.byte 0	
nivel:				.byte 1
puntuacion:			.word 0
mejor_puntuacion:	.word 0
subir_nivel:		.byte 10
status_record:		.byte 0
nombre_record:		.space 11			# Espacio para imprimir los nombres de los jugadores
pieza_siguiente:	.byte 0
respuesta:			.word 0

mens_gameover:		.asciiz "\n\n¡¡GAMEOVER!! Ha terminado el juego\nGracias por jugar"
mens_record:		.asciiz "\n\n¡¡ENHORABUENA!! Tiene la mejor puntuación registrada\nIntroduzca su nombre(1-10 caracteres): "
mens_score:			.asciiz "\nPuntuación conseguida en la partida: " 
mens_puesto:		.asciiz "\nRecord conseguido por el jugador: "
mens_noscore:		.asciiz "\n¡¡RECORD NO CONSEGUIDO POR EL JUGADOR!!\n\n"

mens_opp:			.asciiz "\nELIJA LA OPCION A REALIZAR\n\n"
mens_op0: 			.asciiz "0. Bajada Total\n"
mens_op1: 			.asciiz "1. Izquierda\n"
mens_op3: 			.asciiz "2. Abajo\n"
mens_op2: 			.asciiz "3. Derecha\n"
mens_op4: 			.asciiz "4. Salir\n"
mens_op5: 			.asciiz "5. Girar\n"

mens_op: 			.asciiz "Elija opcion:\n"
cr: 				.asciiz "\n"
espacio:			.asciiz " "
borde_inf:			.asciiz "¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯"
borde_sup:			.asciiz "_____________________"
borde_infpieza:		.asciiz "¯¯¯¯¯¯"
borde_suppieza:		.asciiz "______"
borde_lat:			.asciiz "|"
status_linea:		.asciiz "Lineas:"
status_nivel:		.asciiz "Nivel:"
status_puntua:		.asciiz "Score:"
status_mejor:		.asciiz "Hi-Score:"
caracter:			.space 3			# Espacio para guardar los caracteres para imprime_tablero
	
cod_actual:  .byte -1					# pieza en movimiento
cod_vacio: 	 .byte -2
cod_ocupado: .byte -3

car_vacio:   .byte 46					# Carácter ASCII de '.'
car_ocupado: .byte 127					# Carácter ASCII de ''
car_actual:  .byte 88					# Carácter ASCII de 'X'

car_pieza0:	 .byte 35					# Carácter ASCII de '#'
car_pieza1:	 .byte 216					# Carácter ASCII de 'Ø'
car_pieza2:	 .byte 64					# Carácter ASCII de '@'
car_pieza3:	 .byte 37					# Carácter ASCII de '%'
car_pieza4:	 .byte 165					# Carácter ASCII de '¥'
car_pieza5:	 .byte 64					# Carácter ASCII de '@'
car_pieza6:	 .byte 169					# Carácter ASCII de '©'
car_pieza7:	 .byte 164					# Carácter ASCII de '¤'
car_pieza8:	 .byte 215					# Carácter ASCII de '×'

####################################################################################################################
############################################ SEGMENTO DE CODIGO ####################################################
####################################################################################################################
	.text
	
main:	
	li		$t1, 1							# Cargamos un inmediato
	sb		$t1, nivel						# Aumentamos el nivel

	la		$a0, mens_menu					# Imprimimos las diferentes opciones de las que dispone el jugador
	li		$v0, 4
	syscall
	
	la		$a0, mens_prin1					# Imprimimos en pantalla el menu Nuevo Juego
	li		$v0, 4
	syscall

	la		$a0, mens_prin2					# Imprimimos en pantalla el menu Partida de Nivel	
	li		$v0, 4
	syscall

	la		$a0, mens_prin3					# Imprimimos en pantalla el menu Ver Ramking
	li		$v0, 4
	syscall	

	la		$a0, mens_prin4					# Imprimimos en pantalla el menu Salir
	li		$v0, 4
	syscall	

	
opcion_elegida:							
	la		$a0, mens_op					# Leemos la opcion de juego que el usuario desea y actuamos en consecuencia
	li		$v0, 4
	syscall
	
	li 		$v0,5							# Valor procedente de teclado
	syscall

	move	$t5, $v0						# Copiamos el valor a un temporal
	
	li		$t0, 1							# Cargamos un inmediato
	beq 	$t5, $t0, nueva_partida			# Si ha elegido la opcion 1 salta a Nueva Partida

	li 		$t0, 2							# Cargamos un inmediato
	beq 	$t5, $t0, partida_nivel			# Si ha elegido la opcion 2 salta a Partida de nivel

	li 		$t0, 3							# Cargamos un inmediato
	beq 	$t5, $t0, ver_ranking			# Si ha elegido la opcion 3 salta a ver ranking	

	li 		$t0, 4							# Cargamos un inmediato
	beq 	$t5, $t0, fin_juego				# Si ha elegido la opcion 3 salta a fin_juego
	
	la		$a0, mens_error					# Si no ha introducido un valor correcto (1-3) 
	li		$v0, 4							# informamos al usuario y volvemos a leer la opcion
	syscall

	j		opcion_elegida					# Saltamos a la rutina indicada
	
####################################################################################################################
############################################# PARTIDA DE NIVEL #####################################################
####################################################################################################################	
partida_nivel:
	la		$a0, mens_nivel					# Leemos la opcion de juego que el usuario desea y actuamos en consecuencia
	li		$v0, 4
	syscall
	
	li 		$v0,5							# Valor procedente de teclado
	syscall
	
	li		$t0, 1							# Cargamos un inmediato
	blt		$v0, $t0, error_nivel			# Comparamos el valor procedente de teclado
	
	li		$t0, 20							# Cargamos un inmediato
	ble		$v0, $t0, recoge_nivel			# Comparamos el valor procedente de teclado

error_nivel:	
	la		$a0, mens_error					# Si no ha introducido un valor correcto (1-3) 
	li		$v0, 4							# informamos al usuario y volvemos a leer la opcion
	syscall

	j		partida_nivel					# Saltamos a la rutina indicada
	
recoge_nivel:	
	move	$t1, $v0						# Copiamos el resultado a un temporal
	sb		$t1, nivel						# Escribimos el valor en el espacio dedicado

####################################################################################################################	
nueva_partida:
	la 		$a0, tablero					# Indica al tablero la direccion a iniciar 
	lb 		$a1, cod_vacio					# Imprimimos el tablero con las casillas vacias
	jal 	Inicializa_tablero				# Saltamos a la direccion indicada

	sb		$zero, lineas					# Ponemos a cero el numero de lineas
	sb		$zero, puntuacion				# Ponemos a cero la puntuacion
	li		$t1, 10							# Cargamos un inmediato
	sb		$t1, subir_nivel				# Inicializamos las lineas a borrar
	
	lb		$a0, num_piezas					# Cargamos la direccion inicial del array
	jal 	num_aleatorio					# Saltamos a numero aleatorio
	move	$t0, $v0						# Copiamos el valor a un temporal
	sb 		$t0, pieza_siguiente			# Escribimos el dato en su espacio dedicado
	
sigue_partida:
	lb		$s0, y							# Cargamos la variable y fila
	lb		$s1, x							# Cargamos la variable x columna
	
	move	$s2, $s0						# Copiamos el resultado a un permanente
	move	$s3, $s1						# Copiamos el resultado a un permanente
		
	li 		$t0, 0							# Cargamos un inmediato
	sb 		$t0, pieza_giro					# Escribimos el valor en su espacio correspondiente
		
	lb 		$t0, pieza_siguiente			# Cargamos el byte de la siguiente pieza
	move	$s4, $t0					  	# Copiamos el resultado a un permanente
	lb 		$a0, num_piezas					# Cargamos la direccion del array
	jal 	num_aleatorio					# Saltamos a numero aleatorio
	sb 		$v0, pieza_siguiente			# Escribimos la siguiente pieza de juego
	
	la 		$t0, pieza0						# cargamos la direccion de comienzo
	move 	$t1, $s4						# Copiamos el resultado a un temporal
	lb 		$t2, pieza_giro					# Cargamos el numero de giros
	lb 		$t3, tam_piezas					# Tamaño de cada pieza
	
	mul 	$t4, $t3, $t1					# Multiplico 16 * pieza en juego
	sll 	$t4, $t4, 2						# Multiplico por cuatro para saltarme los giros
	mul 	$t5, $t3, $t2					# Multiplico 16 * pieza_giro
	
	add 	$t0, $t0, $t4					# Sumamos la pieza inicial con la direccion calcilada
	add 	$t0, $t0, $t5					# Sumamos la pieza original con su giro
	
	move 	$a3, $t0						# Copiamos el resultado 

	la 		$a0, tablero					# Indica al tablero la direccion a iniciar 
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
repetir_jugada:
	jal		siguiente_pieza					# Saltamos a la rutina indicada
	
	move	$a0, $a2						# Copiamos el resultado 
	jal		Imprime_tablero					# Saltamos a la rutina indicada
	
	jal		imprimir_status					# Saltamos a la rutina indicada
	
	la		$a0, mens_opp					# Imprimimos las diferentes opciones de las que dispone el jugador
	li		$v0, 4
	syscall
	
	la		$a0, mens_op0					# Imprimimos en pantalla el menu Bajada total
	li		$v0, 4
	syscall
	
	la		$a0, mens_op1					# Imprimimos en pantalla el menu Izquierda
	li		$v0, 4
	syscall

	la		$a0, mens_op3					# Imprimimos en pantalla el menu Abajo 
	li		$v0, 4
	syscall	

	la		$a0, mens_op2					# Imprimimos en pantalla el menu Derecha	
	li		$v0, 4
	syscall
	
	la		$a0, mens_op5					# Imprimimos en pantalla el menu girar
	li		$v0,4
	syscall
	
	la		$a0, mens_op4					# Imprimimos en pantalla el menu Salir
	li		$v0,4
	syscall
	
	la		$a0, cr							# Imprimimos un retorno de carro para dejar un espacio
	li		$v0, 4
	syscall
	
	j		leer_numero						# Saltamos a la rutina indicada
	
izquierda:	
	li		$t0, 0							# Cargamos un inmediato
	beq		$s1, $t0, fin_columna			# Comparamos para saltar a la rutina
	addi	$s3, $s1, -1					# Restamos una columna
	move	$s2, $s0						# Copiamos el resultado a un permanente
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	bnez	$v0, izquierda_choca			# Comparamos para comprobar el choque
	j		repetir_jugada					# Saltamos a la rutina indicada
	
izquierda_choca:	
	addi	$s3, $s3, 1						# Sumamos uno a la columna actual
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos el valor de codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada

	la		$a0, error_choca				# Imprimimos el mensaje de error
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
derecha:
	li		$t0, 10							# Cargamos un inmediato
	
	move	$t5, $s4						# Copiamos el resultado a un temporal
	sll 	$t5, $t5, 2						# Multiplicamos por cuatro
	lb 		$t6, pieza_giro					# Cargamos el valor de la primera posicion
	add 	$t6, $t6, $t5					# Sumamos para calcular 
	
	la		$t1, piezas_x					# Cargamos la direccion del array
	add		$t2, $t6, $t1					# sumamos
	lb		$t3, 0($t2)						# Cargamos el byte
	add		$t4, $s3, $t3					# sumamos la columna y la pieza
	bge		$t4, $t0, fin_columna			# Comparamos con el valor sumado si es la ultima columna

	addi	$s3, $s1, 1						# Sumamos una fila mas
	move	$s2, $s0						# Copiamos el resultado a un permanente
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	bnez	$v0, derecha_choca				# Comprobamos si tenemos una pieza pegada
	j		repetir_jugada					# Saltamos a la rutina indicada
	
derecha_choca:	
	addi	$s3, $s3, -1					# Restamos una columna
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	la		$a0, error_choca				# Cargamos el mensaje
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
abajo:	
	li		$t0, 20							# Cargamos un inmediato
	
	move	$t5, $s4						# Copiamos el resultado a un temporal
	sll 	$t5, $t5, 2						# Multiplicamos por 4
	lb 		$t6, pieza_giro					# Cargamos el valor de la posicion
	add 	$t6, $t6, $t5					# Sumamos
	
	la		$t1, piezas_y					# Cargamos la direccion de pieza_y
	add		$t2, $t6, $t1					# Sumamos
	lb		$t3, 0($t2)						# cargamos el byte de la posicion
	add		$t4, $s2, $t3					# Sumamos
	bge		$t4, $t0, mas_abajo				# Comparamos para ver si es la ultima fila
	
	addi	$s2, $s0, 1						# Sumamos una fila
	move	$s3, $s1						# Copiamos el resultado a un permanente
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	bnez	$v0, choca_casilla				# Comparamos para comprobar el choque 
	
	j		repetir_jugada					# Saltamos a la rutina indicada
	
choca_casilla:
	addi	$s2, $s2, -1					# Restamos una fila	
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_ocupado				# Cargamos codigo ocupado
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a0, $a2						# Copiamos el resultado 
	
	jal		Limpiar_fila					# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	
	move	$a1, $a0						# Copiamos el resultado 
	move	$a0, $a2						# Copiamos el resultado 
	
	jal		Copia_matriz					# Saltamos a la rutina
	
	lb		$t2, lineas						# Cargamos el numero de lineas
	lb		$t4, subir_nivel				# Cargamos el byte 
	blt		$t2, $t4, no_max_lineas2		# Comprobamos para saltar a la rutina
	lb		$t3, nivel						# Cargamos el byte de nivel
	addi	$t3, $t3, 1						# Sumamos
	sb		$t3, nivel						# Guardamos el siguiente nivel
	addi	$t4, $t4, 10					# Sumamos
	sb		$t4, subir_nivel				# Guardamos el valor para el proximo nivel
	
no_max_lineas2:	
	lw		$t2, puntuacion					# Cargamos la puntuacion
	lb		$t3, nivel						# Cargamos el nivel actual
	li		$t4, 5							# Cargamos un inmediato
	mul		$t5, $t3, $t4 					# Multiplicamos nivel y puntuacion
	add		$t2, $t5, $t2					# Sumamos la puntuacion
	sw		$t2, puntuacion					# Guardamos la puntuacion
	
	lb		$t0, cod_ocupado				# Cargamos codigo ocupado
	lb		$t1, 3($a2)						# Cargamos el byte correspondiente
	beq		$t0, $t1, game_over				# Comparamos para el final del juego
	
	lb		$t0, cod_ocupado				# Cargamos codigo ocupado
	lb		$t1, 4($a2)						# Cargamos el byte correspondiente
	beq		$t0, $t1, game_over				# Comprobamos si una pieza llega al principio del tablero
	
	lb		$t0, cod_ocupado				# Cargamos codigo ocupado
	lb		$t1, 5($a2)						# Cargamos el byte correspondiente
	beq		$t0, $t1, game_over				# Comprobamos si una pieza llega al principio del tablero
	
	lb		$t0, cod_ocupado				# Cargamos codigo ocupado
	lb		$t1, 6($a2)						# Cargamos el byte correspondiente
	beq		$t0, $t1, game_over				# Comparamos para el final del juego
	
	j		sigue_partida					# Saltamos a la rutina indicada
	
mas_abajo:	
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_ocupado				# Cargamos codigo ocupado
	
	jal		Genera_prov						# Saltamos a la rutina indicada

	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a0, $a2						# Copiamos el resultado 
	
	jal		Limpiar_fila					# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	move	$a1, $a0						# Copiamos el resultado 
	move	$a0, $a2						# Copiamos el resultado 
	
	jal		Copia_matriz					# Saltamos a la rutina
	
	lb		$t2, lineas						# Cargamos las lineas
	lb		$t4, subir_nivel				# Cargamos el siguiente nivel
	blt		$t2, $t4, no_max_lineas			# Comprobamos para subir el nivel
	lb		$t3, nivel						# Cargamos el nivel
	addi	$t3, $t3, 1						# Aumentamos el nivel
	sb		$t3, nivel						# Guardamos el nivel actual
	addi	$t4, $t4, 10					# Sumamos diez lineas mas a limpiar
	sb		$t4, subir_nivel				# Las guardamos en subir nivel
	
no_max_lineas:	
	lw		$t2, puntuacion					# Cargamos la puntuacion
	lb		$t3, nivel						# Cargmos el nivel actual
	li		$t4, 5							# Cargamos un inmediato
	mul		$t5, $t3, $t4 					# Multiplicamos nivel y puntuacion
	add		$t2, $t5, $t2					# Sumamos las puntuaciones
	sw		$t2, puntuacion					# Guardamos la puntuacion actual
	
	j		sigue_partida					# Saltamos a la rutina indicada
	
fin_columna:	
	la		$a0, error_columna				# Imprimimos el mensaje de fin de columnas
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
fin_fila:	
	la		$a0, error_fila					# Imprimimos el mensaje de fin de filas
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
fin_giro:	
	la		$a0, error_giro					# Imprimimos el mensaje de error de giro
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
####################################################################################################################
############################################## COMPRUEBA CASILLA ###################################################
####################################################################################################################		
comprueba_casilla:
	
	li		$t0, 0							# Cargamos un inmediato
	li		$t1, 3							# Cargamos un inmediato
	lb		$t2, cod_ocupado				# Cargamos codigo ocupado
	li		$t3, 0							# Cargamos un inmediato
	li		$t4, 0							# Cargamos un inmediato
	lb		$t5, tam_piezas					# Cagamos el tamaño de la pieza
	
bucle_comprueba:
	beq		$t0, $t5, fin_comprueba2
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a1, $t3						# Copiamos la fila 
	move	$a2, $t4						# Copiamos la columna 
	move	$a0, $a3						# Copiamos la direccion
	li		$a3, 4							# Cargamos un inmediato
	
	jal		Obten_celda						# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos
	
	
	bnez	$v0, obtener_comprueba			# Comprobamos para saltar a la rutina indicada
	addi	$t0, $t0, 1						# Sumamos una fila
	beq		$t1, $t4, termina_pieza			# Comprobamos para ver si es el fin de la pieza
	addi	$t4, $t4, 1						# Sumamos una posicion a la pieza
	j		bucle_comprueba					# Saltamos a la rutina indicada
	
termina_pieza:
	li		$t4, 0							# Cargamos un inmediato
	addi	$t3, $t3, 1
	j		bucle_comprueba					# Saltamos a la rutina indicada
	
obtener_comprueba:
	add	    $t6, $t3, $s2					# Sumamos las coordenadas de la pieza y el tablero prov
	add		$t7, $t4, $s3					# Sumamos las coordenadas de la pieza y el tablero prov
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move 	$a0, $a1			
	move 	$a1, $t6						# Copiamos el resultado 
	move	$a2, $t7						# Copiamos el resultado 
	lb 		$a3, columnas					# Csrgsmod rl numero de columna
	
	jal 	Obten_celda						# Saltamos a la rutina indicada	
	
	beq		$v0, $t2, fin_comprueba			# Comprobamos el codigo ocupado
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos


	addi	$t0, $t0, 1						# Aumentamos la fila
	addi	$t4, $t4, 1						# Aumentamos una posicion

	j		bucle_comprueba					# Saltamos a la rutina indicada
	
fin_comprueba:
	la		$a0, error_giro					# Imprimimos el mensaje de error de giro
	li		$v0, 4							# Cargamos un inmediato
	syscall	

	li		$v0, 1							# Cargamos un inmediato
	jr 		$ra								# Terminamos la rutina y volvemos
	
fin_comprueba2:	
	li		$v0, 0							# Cargamos un inmediato
	jr 		$ra								# Terminamos la rutina y volvemos	
	
####################################################################################################################	
####################################################################################################################
################################################ RUTINAS DE MEJORA #################################################
####################################################################################################################	
####################################################################################################################

####################################################################################################################
#################################################### POLLING #######################################################
####################################################################################################################

leer_numero:
	lw 		$t0, dificultad					# cargamos el nivel de difucultad
	lb 		$t1, nivel						# Cargamos el numero de nivel
	lw 		$t2, base						# Cargamos los puntos base
		
	mul 	$t1, $t1, $t2					# Aumentamos el nivel segun los puntos base
	sub 	$t1, $t0, $t1
		
	lw 		$t0, respuesta					# Comprobamos el estado del teclado
	
bucle_polling: 	
	lb 		$t5, 0xffff0000					# Carga registro Receptor de Control
	addi 	$t0, $t0, 1						# Siguiente byte
	andi 	$t6, $t5, 0x00000001			# ¿Hay algo?
	
	beq 	$t0, $t1, no_pulsado
	beqz 	$t6, bucle_polling				# Si aún no, bucle de espera activa
	
	lb 		$v0, 0xffff0004					# Lee carácter del Receptor de Datos
	j 		algo_pulsado					# Saltamos a la rutina indicada
	
no_pulsado:	
	li 		$v0, 50							# Simula que hemos pulsado la tecla abajo
	li 		$t0, 0							# Inicializamos el contador
			
algo_pulsado:
	sw 		$t0, respuesta					# Guardamos si se pulsa el teclado
		
	li 		$t0, 48							# Cargamos un inmediato
	beq 	$v0, $t0, bajada_directa	
	li 		$t0, 49							# Cargamos un inmediato
	beq 	$v0, $t0, izquierda		
	li 		$t0, 51							# Cargamos un inmediato
	beq 	$v0, $t0, derecha
	li 		$t0, 50							# Cargamos un inmediato
	beq 	$v0, $t0, abajo
	li 		$t0, 53							# Cargamos un inmediato
	beq 	$v0, $t0, girador_piezas
	li 		$t0, 52							# Cargamos un inmediato
	beq 	$v0, $t0, fin_juego
	
	la		$a0, mens_error					# Si no ha introducido un valor correcto (0-5) 
	li		$v0, 4						
	syscall

	j		leer_numero						# Saltamos a la rutina indicada
	
####################################################################################################################	
########################################### IMPRESION DEL STATUS ###################################################
####################################################################################################################	
imprimir_status:
	addi 	$sp, $sp, -4					# Apilamos
	sw    	$ra, 0($sp)						# Guardamos la direccion de retorno
	
	lb 		$t2, lineas						# Cargamos el numero de lineas
	lb 		$t3, nivel						# Cargamos el nivel
	lw 		$t4, puntuacion					# Cargamos la puntuacion actual
	lw 		$t5, mejor_puntuacion			# Cargamos la mejor puntuacion

	la		$a0, borde_sup					# Imprimimos en borde superior
	li		$v0, 4
	syscall
	
	la		$a0, cr						  	# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
lineas_status:	
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	
	
	la		$a0, status_linea				# Imprimimos el estatus
	li		$v0, 4
	syscall	
	
	la		$a0, espacio					# Imprimimos un espacio
	li		$v0, 4
	syscall	
	
	move	$a0, $t2
	li		$v0, 1							# Cargamos un inmediato
	syscall	
	
####################################################################################################################	
nivel_status:
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

	la		$a0, status_nivel				# Imprimimos el nivel de estatus
	li		$v0, 4
	syscall	
	
	la		$a0, espacio					# Imprimimos un espacio
	li		$v0, 4
	syscall	
	
	move	$a0, $t3						# Copiamos el resultado 
	li		$v0, 1
	syscall	

####################################################################################################################		
puntuacion_status:
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	
	
	la		$a0, status_puntua				# Imprimimos la puntuacion
	li		$v0, 4
	syscall	
	
	la		$a0, espacio					# Imprimimos un espacio
	li		$v0, 4
	syscall	
	
	move	$a0, $t4						# Copiamos el resultado
	li		$v0, 1							# Cargamos un inmediato
	syscall	
	
####################################################################################################################
mejor_status:
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

	la		$a0, status_mejor				# Imprimimos el mejor estatus
	li		$v0, 4
	syscall	
	
	la		$a0, espacio					# Imprimimos el borde inferior
	li		$v0, 4
	syscall	
	
	move	$a0, $t5						# Copiamos el resultado
	li		$v0, 1							# Cargamos un inmediato
	syscall	
	
fin_status:
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	la		$a0, borde_inf					# Imprimimos el borde inferior
	li		$v0, 4
	syscall

	lw 		$ra, 0($sp)					
	addi 	$sp, $sp, 4						# Desapilamos
	jr		$ra								# Volvemos a la direccion de retorno
	
####################################################################################################################
############################################### SIGUIENTE PIEZA ####################################################	
####################################################################################################################		
siguiente_pieza:
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$s4, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	lb		$t5, pieza_siguiente			# Cargamos la pieza siguiente

	la 		$t0, pieza0						# Casrgamos el principio de la direccion de pieza
	move 	$t1, $t5						# Copiamos el resultado a un temporal
	lb 		$t3, tam_piezas					# Tamaño de cada pieza
	
	mul 	$t4, $t3, $t1					# Multiplico 16 * pieza en juego
	sll 	$t4, $t4, 2						# Multiplico por cuatro para saltarme los giros
	
	add 	$t0, $t0, $t4

	move 	$t6, $t0						# Copiamos el resultado a un temporal
	li		$t0, 4							# Limite de casillas
	li		$t1, 1							# Limite de casillas de una fila
	li		$t8, 0							# Limite de casillas

	la		$a0, borde_suppieza				# Imprimimos el borde de la pieza
	li		$v0, 4
	syscall

	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

####################################################################################################################	
inicio_bucle_linea:
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

bucle_linea:
	beq		$t0, $t8, fin_bucle_linea		# Comprobamos si es el final de la linea
	lb		$t7, 0($t6)						# Cargamos el valor de la posicion
	beq		$t1, $t7, status_pieza
	j		status_vacia					# Saltamos a la rutina indicada

status_pieza:
	lb		$t9, car_ocupado($0)			# Cargamos el valor ASCII del caracter de una casilla ocupada
	sb		$t9, caracter($0)

	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1						# Sumamos una posicion a la fila
	addi	$t6, $t6, 1
	
	j		bucle_linea						# Saltamos a la rutina indicada
	
status_vacia:
	lb		$t9, car_vacio($0)				# Cargamos el caracter vacio
	sb		$t9, caracter($0)
	
	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1

	j		bucle_linea						# Saltamos a la rutina indicada
	
fin_bucle_linea:

	
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	j		inicio_bucle_linea2				# Volvemos

####################################################################################################################	
inicio_bucle_linea2:
	li		$t8, 0							# Limite de casillas

	la		$a0, borde_lat					# Imprimimos un retorno de carro
	li		$v0, 4
	syscall	

bucle_linea2:

	beq		$t0, $t8, fin_bucle_linea2
	lb		$t7, 0($t6)						# Cargamos el byte de la posicion
	beq		$t1, $t7, status_pieza2
	j		status_vacia2					# Saltamos a la rutina indicada

status_pieza2:
	lb		$t9, car_ocupado($0)			# Cargamos el valor ASCII del caracter de una casilla ocupada
	sb		$t9, caracter($0)

	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea2					# Saltamos a la rutina indicada
	
status_vacia2:
	lb		$t9, car_vacio($0)				# Cargamos el caracter vacio
	sb		$t9, caracter($0)
	
	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea2					# Saltamos a la rutina indicada
	
fin_bucle_linea2:
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	j		inicio_bucle_linea3				# Volvemos	
	
####################################################################################################################
inicio_bucle_linea3:
	li		$t8, 0							# Limite de casillas

	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

bucle_linea3:
	beq		$t0, $t8, fin_bucle_linea3		# Comparamos si es el fin de la linea
	lb		$t7, 0($t6)						# Cargamos el byte de la posicion
	beq		$t1, $t7, status_pieza3
	j		status_vacia3					# Saltamos a la rutina indicada

status_pieza3:
	lb		$t9, car_ocupado($0)			# Cargamos el valor ASCII del caracter de una casilla ocupada
	sb		$t9, caracter($0)

	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea3					# Saltamos a la rutina indicada
	
status_vacia3:
	lb		$t9, car_vacio($0)				# cargamos el caracter vacio
	sb		$t9, caracter($0)
	
	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea3					# Saltamos a la rutina indicada
	
fin_bucle_linea3:
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	j		inicio_bucle_linea4				# Volvemos

####################################################################################################################
inicio_bucle_linea4:
	li		$t8, 0							# Limite de casillas

	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	

bucle_linea4:
	beq		$t0, $t8, fin_bucle_linea4
	lb		$t7, 0($t6)						# Cargamos el byte de la posicion
	beq		$t1, $t7, status_pieza4
	j		status_vacia4					# Saltamos a la rutina indicada

status_pieza4:
	lb		$t9, car_ocupado($0)			# Cargamos el valor ASCII del caracter de una casilla ocupada
	sb		$t9, caracter($0)

	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea4					# Saltamos a la rutina indicada
	
status_vacia4:
	lb		$t9, car_vacio($0)				# Cargamos el caracter vacio
	sb		$t9, caracter($0)
	
	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall
	
	addi	$t8, $t8, 1
	addi	$t6, $t6, 1
	
	j		bucle_linea4					# Saltamos a la rutina indicada
	
fin_bucle_linea4:
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall	
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	j		fin_siguiente_pieza				# Saltamos a la rutina indicada
	
fin_siguiente_pieza:
	li		$t8, 0							# Limite de casillas

	la		$a0, borde_infpieza				# Imprimimos el borde inferior
	li		$v0, 4
	syscall

	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$s4, 4($sp)						# Cargamos el permanente guardado
	lw 		$a1, 8($sp)						# cargamos la direccion de tablero_prov
	lw 		$a2, 12($sp)					# Cargamos la direccion de tablero_print
	lw 		$a3, 16($sp)					# Cargamos  la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal guardado
	lw 		$t1, 24($sp)					# Cargamos el temporal guardado
	lw 		$t2, 28($sp)					# Cargamos el temporal guardado
	lw 		$t3, 32($sp)					# Cargamos el temporal guardado
	lw 		$t4, 36($sp)					# Cargamos el temporal guardado
	lw 		$t5, 40($sp)					# Cargamos el temporal guardado
	lw 		$t6, 44($sp)					# Cargamos el temporal guardado
	lw 		$t7, 48($sp)					# Cargamos el temporal guardado
	lw 		$t8, 52($sp)					# Cargamos el temporal guardado
	addi 	$sp, $sp, 56					# Desapilamos
	
	jr		$ra								# Volvemos
	
####################################################################################################################	
############################################### BAJADA DIRECTA #####################################################
####################################################################################################################

bajada_directa:	
	li		$t0, 20							# Cargamos un inmediato
	
	move	$t5, $s4						# Copiamos el valor a un temporal
	sll 	$t5, $t5, 2
	lb 		$t6, pieza_giro					# Cargamos en numero de giros
	add 	$t6, $t6, $t5					# Cargamos el giro actual
	
	la		$t1, piezas_y					# Cargamos la altura de la pieza
	add		$t2, $t6, $t1
	lb		$t3, 0($t2)						# Cargamos el byte de la posicion
	add		$t4, $s2, $t3
	bge		$t4, $t0, mas_abajo
	
	addi	$s2, $s0, 1
	move	$s3, $s1						# Copiamos el numero de columna
	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	lb		$s5, cod_actual					# Cargamos el codigo actual
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	bnez	$v0, choca_casilla				# Comprobamos si chocamos con una casilla
	
	j		bajada_directa					# Saltamos a la rutina indicada

####################################################################################################################
############################################## GIRADOR DE PIEZAS ###################################################
####################################################################################################################
girador_piezas:
	lb 		$t0, pieza_giro
	li 		$t1, 4							# Cota superior de giros
	
	addi 	$t0, $t0, 1						# Sumamos un giro
	bne 	$t0, $t1, comprobando_giro
	li 		$t0, 0							# Cargamos un inmediato
	
comprobando_giro:
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos un temporal
	sw 		$t7, 48($sp)					# Guardamos un temporal
	sw 		$t6, 44($sp)					# Guardamos un temporal
	sw 		$t5, 40($sp)					# Guardamos un temporal
	sw 		$t4, 36($sp)					# Guardamos un temporal
	sw 		$t3, 32($sp)					# Guardamos un temporal
	sw 		$t2, 28($sp)					# Guardamos un temporal
	sw 		$t1, 24($sp)					# Guardamos un temporal
	sw 		$t0, 20($sp)					# Guardamos un temporal
	sw 		$a3, 16($sp)					# Guardamos la direccion de tablero
	sw 		$a2, 12($sp)					# Guardamos la direccion de tablero_prov
	sw 		$a1, 8($sp)						# Guardamos la direccion de tablero_print
	sw 		$s4, 4($sp)						# Guardamos un permanente
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno

	li		$t7, 10							# Cargamos un inmediato
	move	$t5, $s4						# Copiamos el valor a un temporal
	sll 	$t5, $t5, 2						# Multiplicamos por cuatro la posicion
	add 	$t9, $t0, $t5
	la		$t1, piezas_x					# Tamaño de pieza horizontal
	add		$t2, $t9, $t1
	lb		$t3, 0($t2)						# Cargamos el byte de la posision 
	add		$t4, $s3, $t3
	bgt		$t4, $t7, fin_columna
	
	li		$t7, 20							# Cargamos un inmediato
	move	$t5, $s4						# Copiamos el valor a un temporal
	sll 	$t5, $t5, 2						# Multiplicamos por cuatro la posicion
	add 	$t9, $t0, $t5
	la		$t1, piezas_y					# Tamaño de pieza vertical
	add		$t2, $t9, $t1
	lb		$t3, 0($t2)						# cargamos el byte de la posicion correspondiente
	add		$t4, $s2, $t3
	bge		$t4, $t7, fin_fila				# Comprobamos si hemos llegado al fin las filas

giro:
	la 		$t0, pieza0						# Cargamos la direccion inicial de las piezas
	move 	$t1, $s4
	lb 		$t2, pieza_giro					# Cargamos la pieza de giro
	lb 		$t3, tam_piezas					# Tamaño de cada pieza
	mul 	$t4, $t3, $t1					# Multiplico 16 * pieza en juego
	sll 	$t4, $t4, 2						# Multiplico por cuatro para saltarme los giros
	mul 	$t5, $t3, $t2					# Multiplico 16 * pieza_giro
	add 	$t0, $t0, $t4
	add 	$t0, $t0, $t5	

	lb		$t1, 0($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 1($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 2($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 3($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 4($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 5($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 6($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 7($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 8($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 9($t0)						# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 10($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 11($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 12($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 13($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 14($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	lb		$t1, 15($t0)					# Cargamos el byte de la posicion
	bnez	$t1, giro_dudoso				# Comprobamos el valor para ver si se puede realizar el giro
	
	j		calcula_giro					# Saltamos a la rutina indicada

giro_dudoso:	
	la		$a0, tablero					# Cargamos la direccion de tablero
	
	move	$t0, $a0						# Movemos a un temporal la direccion inicial del tablero en memoria
	move	$t1, $s2						# Movemos a un temporal la fila de la celda
	move	$t2, $s3						# Movemos a un temporal la coloumna de la celda
	li		$t3, 10							# Movemos a un temporal el tamaño de la fila de la matriz

	mul		$t4, $t1, $t3					# $t4 = Tamaño de la fila de la matriz + 1
	add		$t5, $t4, $t2					# $t6 =	(Tamaño de la fila de la matriz + 1) - Fila de la casilla
	add 	$t0, $t0, $t5					# $t8 = Nº de la casilla +la direccion del tablero
	
	lb 		$t2, cod_ocupado				# Cargamos codigo ocupado
	
	lb		$t1, 0($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 1($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 2($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 3($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 4($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 5($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 6($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 7($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 8($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 9($t0)						# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 10($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 11($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 12($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 13($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 14($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro
	lb		$t1, 15($t0)					# Cargamos el byte de la posicion
	beq		$t1, $t2, giro_choca			# Comprobamos si choca la pieza en el giro

	j		calcula_giro					# Saltamos a la rutina indicada

giro_choca:	
	la		$a0, error_giro					# Imprimimos el error de giro
	li		$v0, 4
	syscall
	
	j	repetir_jugada						# Saltamos a la rutina indicada
	
calcula_giro:
	lw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	lw 		$s4, 4($sp)						# Cargamos el permanente
	lw 		$a1, 8($sp)						# Cargamos la direccion de tablero_print
	lw 		$a2, 12($sp)					# Cargamos la direccion de tablero_prov
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	sb 		$t0, pieza_giro					# Guardamos el giro actual
		
	la 		$t0, pieza0						# Cargamos la direccion de pieza0
	move 	$t1, $s4
	lb 		$t2, pieza_giro
	lb 		$t3, tam_piezas					# Tamaño de cada pieza
	
	mul 	$t4, $t3, $t1					# Multiplico 16 * pieza en juego
	sll 	$t4, $t4, 2						# Multiplico por cuatro para saltarme los giros
	mul 	$t5, $t3, $t2					# Multiplico 16 * pieza_giro
	
	add 	$t0, $t0, $t4
	add 	$t0, $t0, $t5

fin_girador:	
	move 	$a3, $t0

	la		$a0, tablero					# Cargamos la direccion de tablero
	la 		$a1, tablero_prov				# Indica al tablero la direccion a iniciar 
	la 		$a2, tablero_print				# Indica al tablero la direccion a iniciar 
	
	jal		Genera_prov						# Saltamos a la rutina indicada
	
	j		repetir_jugada					# Saltamos a la rutina indicada
####################################################################################################################
################################################### VER RANKING ####################################################
####################################################################################################################	
ver_ranking:								# Guardamos el jugador que ha logrado la mejor puntuacion
	lb		$t0, status_record							
	beq		$t0, $zero, no_recordgraba		# por eso si es = a 0 no ha logrado ninguna todavia
	
	la		$a0, mens_puesto
	li		$v0, 4							# Imprimimos el nombre del jugador que ha logrado el record
	syscall

	la		$a0, nombre_record				# Nombre del jugador que ha logrado el record
	li		$v0, 4
	syscall

	la		$a0, mens_score					# Imprimimos la puntuacion lograda
	li		$v0, 4
	syscall
	
	lw		$t2, mejor_puntuacion			# Cargamos la mejor puntuacion actual
	move	$a0, $t2
	li		$v0, 1							# Nº de puntos logrados
	syscall
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	j 		main							# Terminamos la rutina y saltamos a a la rutina indicada
	
ranking:	
	lb		$t0, status_record				# Guardamos los datos del usuario que ha ganado
	beq 	$t0, 0, guardar_datos			# Si es la primera puntuacion guardamos los datos
	lw		$t0, mejor_puntuacion
	lw		$t1, puntuacion
	bge 	$t0, $t1, no_record				# Si la puntuacion no es mayor, no hay record
	jal		guardar_nombre					# Saltamos a la rutina indicada

guardar_datos:								# Calculamos su puntuacion con la formula vista
	lw		$t1, puntuacion
	blez	$t1, no_record					# Salta si es menor o igual que cero

guardar_nombre:					
	la 		$a0, mens_record				# Pedimos los datos del jugador
	li 		$v0, 4
	syscall

	la 		$a0, nombre_record				# Reservamos espacio para nombre del jugador
	li		$a1, 11							# 10 caracteres + byte nulo				
	li 		$v0, 8					
	syscall

	la		$a0, mens_score					# Imprimimos la puntuacion que ha logrado
	li		$v0, 4
	syscall
	
	lw		$t1, puntuacion
	move	$a0, $t1						# Movemos registros

	li		$v0, 1							# Nº de puntos logrados
	syscall

	lw		$t2, puntuacion					# Cargamos puntuacion actual conseguida
	sw		$t2, mejor_puntuacion			# Actualizamos la mejor puntuacion conseguida
	
	li		$t2, 0							# Cargamos un inmediato
	sw		$t2, puntuacion					# Guardamos la puntuacion actual
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	j	 	main							# Saltamos a la rutina indicada

no_record:									# Si no hay record lo comunicamos al usuario
	li		$t2, 0							# Cargamos un inmediato
	sw		$t2, puntuacion					# Actualizamos la puntuacion conseguida

	la 		$a0, mens_noscore				
	li 		$v0, 4
	syscall
	
	j	 	main							# Saltamos a la rutina indicada

no_recordgraba:								# Si no se ha conseguido record tambien se comunica
	li		$t2, 0							# Cargamos un inmediato
	sw		$t2, puntuacion					# Actualizamos la puntuacion conseguida

	la		$a0, mens_noscore				# Imprimimos el mensaje de texto que informa de que no hay record
	li		$v0, 4
	syscall
	
	j	 	main							# Saltamos a la rutina indicada
	
####################################################################################################################
################################################### GAME OVER ######################################################
####################################################################################################################	
game_over:
	lb		$t0, status_record				# Cargamos el record del juego
	addi	$t0, $t0, 1						
	sb		$t0, status_record
	
	la		$a0, mens_gameover				# Imprimimos el mensaje de gameover
	li		$v0, 4
	syscall
	
	j		ranking							# Saltamos a la rutina indicada
	
####################################################################################################################
###################################################### SALIR #######################################################
####################################################################################################################
fin_juego:
	lw		$t2, puntuacion					# Cargamos la puntuacion actual
	sw		$t2, mejor_puntuacion			# Guarsdamos la puntuacion total

	li		$v0, 10							# Cargamos un inmediato
	syscall									# Fin del programa
	
####################################################################################################################
# Direccion_celda                                                                                                  #
# Descripción: Rutina que dada una coordenada en una de las matrices, calcula la posición de memoria en            #
# el segmento de datos, donde se encuentra almacenado el byte con el valor de la celda.                            #                                                                                                    #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección de la matriz sobre la que calcular la dirección (tablero,                                   #
#         tablero_prov, tablero_print, pieza0,…, pieza7).                                                          # 
#	$a1 = La fila de la celda.                                                                                     #
#	$a2 = La columna de la celda.                                                                                  #
#   $a3 = El tamaño de la fila de la matriz.                                                                       #
# Devuelve:                                                                                                        #
# 	$v0: La dirección de memoria que se corresponde con la celda ($a1, $a2) en el tablero que se indica en $a0.    #                                                                   
####################################################################################################################
Direccion_celda:
	addi 	$sp, $sp, -4				# Apilamos
	sw		$ra, 0($sp)					# No guardamos $ra porque esta rutina no llama a su vez a otra

	move	$t0, $a0					# Movemos a un temporal la direccion inicial del tablero en memoria
	move	$t1, $a1					# Movemos a un temporal la fila de la celda
	move	$t2, $a2					# Movemos a un temporal la coloumna de la celda
	move	$t3, $a3					# Movemos a un temporal el tamaño de la fila de la matriz

	mul		$t4, $t1, $t3				# $t4 = (fila * numero de columnas de la matriz)
	add		$t5, $t4, $t2				# $t5 =	$t4 + columna
	
direccion_fin:	
	add 	$t6, $t0, $t5				# $t6 = Nº de la casilla + la direccion del tablero
	move	$v0, $t6					# Copiamos el valor
	
	lw		$ra, 0($sp)
	addi 	$sp, $sp,4					# Desapilamos
	jr 		$ra							# Volvemos a la direccion de retorno

####################################################################################################################
# Obten_celda                                                                                                      #
# Descripción: Esta rutina acude a un tablero para recuperar el valor de una de sus celdas.                        #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección del tablero sobre el que consultar (tablero, tablero_prov, tablero_print, pieza0,…, pieza7).#                                                                        #
#	$a1 = La fila de la celda.                                                                                     #
#	$a2 = La columna de la celda.                                                                                  #                             
#	$a3 = El tamaño de la fila de la matriz.                                                                       #
# Devuelve:                                                                                                        #
# 	$v0 = el valor de la celda.(cod_ocupado, cod_vacio ,cod_actual)                                                #
####################################################################################################################
Obten_celda:
	addi 	$sp, $sp, -4				# Apilamos
	sw    	$ra, 0($sp)
	jal 	Direccion_celda				# Saltamos a la rutina indicada
	
	lb 		$v0, 0($v0) 				# Guardamos el valor de la casilla

	lw 		$ra, 0($sp)					
	addi 	$sp, $sp, 4					# Desapilamos
	jr 		$ra							# Terminamos la rutina y volvemos

####################################################################################################################
# Cambia_celda                                                                                                     #
# Descripción: Esta rutina accede a un tablero para cambiar el valor de una de sus celdas. Las matrices de         #
#              piezas no pueden modificarse durante el juego.                                                      #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección del tablero a modificar (tablero, tablero_prov o tablero_print).                            #                                                        
# 	$a1 = La fila de la celda.                                                                                     #
# 	$a2 = La columna de la celda.                                                                                  #
# 	$a3 = El valor a poner en la celda.                                                                            #
# Devuelve:                                                                                                        #
# 	$v0 = el valor a poner en la celda.(cod_ocupado, cod_vacio ,cod_actual)                                                                          
####################################################################################################################
Cambia_celda:
	addi 	$sp, $sp, -8					# Apilamos
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	sw 		$a3, 4($sp)
		
	lb 		$a3, columnas					# Cargamos el numero de columnas
	jal 	Direccion_celda					# Saltamos a la rutina indicada
	lb 		$a3, 4($sp)
	
	sb 		$a3, 0($v0)						# Escribimos el valor de la celda
	
	lw 		$ra, 0($sp)						# cargamos la direccion de retorno
	addi 	$sp, $sp, 8						# Desapilamos
	
	jr 		$ra								# Terminamos la rutina y volvemos
####################################################################################################################
# Imprime_tablero                                                                                                  #
# Descripción: Con esta rutina se imprime el tablero tablero_print por la consola. La rutina interpretará          #
#              los bytes de la matriz traduciéndolos a su correspondiente representación ASCII para imprimir       #
#              correctamente el tablero.                                                                           #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección tablero_print.                                                                              #
####################################################################################################################
Imprime_tablero:
	addi 	$sp, $sp, -4					# Apilamos
	sw    	$ra, 0($sp)
	
	li		$t0, 200						# Limite de casillas
	li		$t1, 10							# Limite de casillas de una fila
	li		$t2, 0							# Contador de casillas y Sumador de direcciones
	li		$t3, 1							# Contador de casillas de una fila
	move	$t4, $a0						# Cargamos la direccion de tablero en $s0

	
	la		$a0, borde_sup					# Imprimimos el borde superior
	li		$v0, 4
	syscall

termina_fila:
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall
	
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall

bucle_imprime:
	add		$t7, $t4, $t2					# Dirección inicial del tablero + nº casilla
	lb		$t7, 0($t7)						# $t7 = Valor contenido en la casilla

	lb		$t5, cod_ocupado($0)			# Si hay una mina en la casilla se imprime el caracter ''
	beq		$t7, $t5, imprimir_ocupado		# Saltamos si es igual a $t5
	
	lb 		$t5, cod_vacio($0)				# Si hay una casilla sin descubrir se imprime el caracter '.'
	beq		$t7, $t5, imprimir_vacio		# Saltamos si es igual a $t5
	
	lb 		$t5, cod_actual($0)				# Si hay una casilla con bandera se imprime el caracter 'X'
	beq		$t7, $t5, imprimir_actual		# Saltamos si es igual a $t5

imprimir_ocupado:						
	lb		$t5, car_ocupado($0)			# Cargamos el valor ASCII del caracter de una casilla ocupada
	sb		$t5, caracter($0)
	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_vacio:								# Cargamos el valor ASCII del caracter de una casilla vacia				
	lb		$t5, car_vacio($0)
	sb		$t5, caracter($0)
	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_actual:							# Cargamos el valor ASCII del caracter de una casilla en moviemiento
	li		$t9, 0							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza0
	li		$t9, 1							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza1
	li		$t9, 2							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza2
	li		$t9, 3							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza3
	li		$t9, 4							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza4
	li		$t9, 5							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza5
	li		$t9, 6							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza6
	li		$t9, 7							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza7
	li		$t9, 8							# Cargamos un inmediato
	beq		$s4, $t9, imprimir_pieza8

imprimir_pieza0:	
	lb		$t5, car_pieza0($0)				# Cargamos el caracter de la pieza
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada
	
imprimir_pieza1:	
	lb		$t5, car_pieza1($0)				# Cargamos el caracter de pieza 1
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada
	
imprimir_pieza2:
	lb		$t5, car_pieza2($0)				# Cargamos el caracter de pieza 2
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_pieza3:
	lb		$t5, car_pieza3($0)				# Cargamos el caracter de pieza 3
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_pieza4:
	lb		$t5, car_pieza4($0)				# Cargamos el caracter de pieza 4
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_pieza5:
	lb		$t5, car_pieza5($0)				# Cargamos el caracter de pieza 5
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_pieza6:		
	lb		$t5, car_pieza6($0)				# Cargamos el caracter de pieza 6
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada
	
imprimir_pieza7:
	lb		$t5, car_pieza7($0)				# Cargamos el caracter de pieza 7
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada

imprimir_pieza8:		
	lb		$t5, car_pieza8($0)				# Cargamos el caracter de pieza 8
	sb		$t5, caracter($0)

	j		imprime_caracter				# Saltamos a la rutina indicada
	
imprime_caracter:						
	la 		$a0, caracter					# Imprimiendo los caracteres correspondientes
	li		$v0, 4
	syscall

	addi	$t2, $t2, 1						# Incrementamos contadores
	addi	$t3, $t3, 1						# Incrementamos contadores
	
	beq		$t0, $t2, fin_imprimir			# Salta si $t0 = $t2
		
	blt		$t1, $t3, imprime_caracter2		# Salta si $t1 < o = $t3	
		
	la 		$a0, espacio					# Imprimiendo un doble espacio para mejor estetica del tablero
	li		$v0, 4
	syscall
	
imprime_caracter2:
	bge		$t1, $t3, bucle_imprime			# Salta si $t1 < o = $t3

	li		$t3, 1							# Inicializamos el contador de casillas de una fila
	
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall
	
	j		termina_fila					# Saltamos a termina_fila para volver a imprimir un retorno de carro
	
fin_imprimir:
	la		$a0, borde_lat					# Imprimimos el borde lateral
	li		$v0, 4
	syscall

	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	la		$a0, borde_inf					# Imprimimos el borde inferior
	li		$v0, 4
	syscall
	
	la		$a0, cr							# Imprimimos un retorno de carro
	li		$v0, 4
	syscall

	li		$t6, 0							# Cargamos un inmediato
	
	lw 		$ra, 0($sp)						# Desapilamos		
	addi 	$sp, $sp, 4
	jr		$ra								# Volvemos
	
####################################################################################################################
# Inicializa_tablero                                                                                               #     
# Descripción: Inicializa un tablero con un valor.                                                                 #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección del tablero a inicializar.                                                                  #
# 	$a1 = El valor con el que inicializarlo.                                                                       #
# 	$t0 = Contador.																				                   #
# 	$t1 = Limite maximo de posiciones(200). 														               #
####################################################################################################################
Inicializa_tablero:
	addi 	$sp, $sp, -4				# Apilamos
	sw 		$ra, 0($sp)					# Guardamos la direccion de retorno
	li 		$t0, 0 						# Cargamos el contador
	li 		$t1, 200 					# Cargamos el limite de posiciones
	move 	$t2, $a0					# Copiamos la direccion del tablero a un registro temporal
	move 	$t3, $a1					# Copiamos la direccion del tablero a un registro temporal
	
bucle_inicializa:
	beq 	$t0, $t1, fin_inicializa	# Si contador = limite de posiciones entonces salta a fin_inicializa
	sb 		$t3, 0($t2)					# Guardamos en el temporal el valor que contiene el argumento 
	addi 	$t2, $t2, 1					# Cambiamos de byte en el tablero
	addi 	$t0, $t0, 1  				# Incrementamos el contador
	j 		bucle_inicializa			# Volvemos al bucle

fin_inicializa:
	lw 		$ra, 0($sp)					# Cargamos la direccion de retorno
	addi 	$sp, $sp, 4					# Desapilamos
	jr 		$ra							# Terminamos la rutina y volvemos

####################################################################################################################
# Limpiar_fila                                                                                                     #
# Descripción: Comprueba si alguna fila del tablero está totalmente ocupada con celdas con valor cod_ocupado.      #
#              Si es así,copia los valores de las filas, superiores a la modificada, sobre la fila inmediatamente  #
#              inferior.                                                                                           #
# Parámetros:                                                                                                      #
# 	$a0 = la dirección del tablero a comprobar. Sólo debe realizarse sobre la matriz tablero.                      #
####################################################################################################################
Limpiar_fila:
	addi 	$sp, $sp, -4					# Apilamos
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	li 		$t1, 0 							# Cargamos el limite de posiciones	
	
inicio_limpieza:
	li 		$t0, 20							# Cargamos el contador
	li 		$t2, 10							# Cargamos el limite de filas
	li		$t3, 0							# Cargamos el contador de filas a 0
	lb		$t4, cod_ocupado				# Cargamos el valor de cod_vacio
	li		$t5, 0							# Cargamos el contador de filas a 0
	move 	$t6, $a0						# Copiamos la direccion del tablero a un registro temporal
	li		$t7, 1							# Cargamos el contador de filas a 0
	
bucle_limpieza:
	beq 	$t3, $t0, fin_limpieza2			# Si contador = limite de posiciones entonces salta a fin_inicializa
	lb 		$t8, 0($t6)						# Cargamos en el temporal $t6 el valor que contiene $t5 en esa direccion
	beq 	$t8, $t4, contar_ocupadas		# Si temporal $t6 = valor de cod_vacio entonces salta a sigue_bucle
	addi	$t6, $t6, 10
	addi 	$t3, $t3, 1  					# Incrementamos el contador
	j 		bucle_limpieza					# Volvemos al bucle
	
contar_ocupadas:
	addi	$t5, $t5, 1						# Aumentamos el numero de casillas ocupadas
	beq		$t5, $t2, copia_filas			# Comprobamos el numero de ocupadas
	addi	$t6, $t6, 1						# Aumentamos una posicion
	lb 		$t8, 0($t6)						# cargamos el valor de la posicion
	bne		$t8, $t4, no_ocupada			# Si temporal $t8 = valor de cod_vacio entonces salta a sigue_bucle	
	j		contar_ocupadas					# Saltamos a la rutina indicad
	
no_ocupada:
	sub		$t8, $t2, $t5					# Incrementamos el contador de filas
	add 	$t6, $t6, $t8  					# Incrementamos el contador
	addi 	$t3, $t3, 1  					# Incrementamos el contador
	li		$t5, 0							# Cargamos un inmediato
	j		bucle_limpieza					# Volvemos al bucle_limpieza
	
copia_2:
	addi	$t6, $t6, -1					# Restamos una posicion para ir al principio de fila
copia_filas:
	addi 	$t3, $t3, -1 					# Cambiamos de byte en el tablero
	li		$t5, 0							# Cargamos el contador de filas a 0
	addi 	$t6, $t6, -19 					# Cambiamos de byte en el tablero
bucle_copia:	
	lb 		$t8, 0($t6)						# Cargamos en el temporal $t6 el valor que contiene $t5 en esa direccion
	addi 	$t6, $t6, 10  					# Cambiamos de byte en el tablero
	sb		$t8,0($t6)						# Guardamos en el temporal $t6 el valor que contiene $t8
	addi	$t5, $t5, 1						# Incrementamos el contador de filas
	addi 	$t6, $t6, -9 					# Cambiamos de byte en el tablero

	beq		$t5, $t2, copia_2				# Si contador de filas = el limite de filas entonces salta a copia2
	beq		$t7, $t3, fin_limpieza			# Cuando llegemos a la fila uno terminamos de copiar
	j		bucle_copia						# Saltamos a la rutina indicada

fin_limpieza:	
	lb		$t9, lineas						# Cargamos el numero de lineas
	addi	$t9, $t9, 1						# Sumamos otra linea
	sb		$t9, lineas						# Actualizamos el numero de lineas
	
	addi 	$sp, $sp, -12					# Apilamos
	sw 		$t4, 8($sp)						# Cargamos la direccion de retorno
	sw 		$t3, 4($sp)						# Cargamos la direccion de retorno
	sw 		$t2, 0($sp)						# Cargamos la direccion de retorno

	lw		$t9, puntuacion					# Cargamos la puntuacion actual
	lb		$t3, nivel						# Cargamos el nivel
	li		$t4, 100						# Cargamos un inmediato
	mul		$t2, $t3, $t4 
	add		$t9, $t2, $t9
	sw		$t9, puntuacion					# Guardamos la puntuacion actual
	
	lw 		$t2, 0($sp)						# Cargamos la direccion de retorno
	lw 		$t3, 4($sp)						# Cargamos la direccion de retorno
	lw 		$t4, 8($sp)						# Cargamos la direccion de retorno
	addi 	$sp, $sp, 12					# Desapilamos
	
fin_limpieza2:
	li 		$t8, 4							# Cargamos un inmediato
	addi	$t1, $t1, 1	
	la		$a0, tablero_print				# Cargamos la direccion de tablero_print
	bne		$t1, $t8, inicio_limpieza

	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	addi 	$sp, $sp, 4						# Desapilamos
	jr 		$ra								# Terminamos la rutina y volvemos

####################################################################################################################
# Copia_matriz                                                                                                     #
# Descripción: Copia el contenido de un tablero sobre otro tablero.                                                #
# Parámetros:                                                                                                      #
# 	$a0 = La dirección del tablero que va a ser copiado.                                                           #
#	$a1 = La dirección del tablero sobre la que se va a realizar la copia.                                         #
####################################################################################################################
Copia_matriz:
	lb		$t0, columnas					# Cargamos el numero de columnas
	lb		$t1, filas						# Cargamos el limite de posiciones
	li 		$t3, 0							# Cargamos el limite de posiciones
	li 		$t4, 0							# Cargamos el limite de posiciones
	li 		$a3, 10							# Cargamos el limite de posiciones
bucle_copiar:
	beq	    $t1, $t4, fin_copia	
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a1, $t4
	move	$a2, $t3
	
	jal		Obten_celda						# Saltamos a la rutina
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move 	$a0, $a1
	move	$a1, $t4
	move	$a2, $t3
	move	$a3, $v0
	
	jal		Cambia_celda					# Saltamos a la rutina
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	addi	$t3, $t3, 1
	beq	    $t3, $t0, fin_contador_fila
	j		bucle_copiar					# Saltamos a la rutina indicada

fin_contador_fila:
	li		$t3, 0
	addi	$t4, $t4, 1
	j		bucle_copiar					# Saltamos a la rutina indicada
	
fin_copia:
	jr 		$ra								# Terminamos la rutina y volvemos

####################################################################################################################
# Genera_prov                                                                                                      #
# Descripción: Copia tablero sobre tablero_prov. Por cada una de las cuatro celdas ocupadas de la                  #
#              pieza en juego se añade una celda, con el valor cod_actual, a tablero_prov, siempre que             #
#              las celdas de destino estén desocupadas.                                                            #
#              Si tablero_prov se ha generado sin problemas, copia tablero_prov sobre                              #
#              tablero_print y fija las nuevas coordenadas de la pieza en juego con las coordenadas                #
#              provisionales, actualizando $x y $y con los valores de $xprov y $yprov, respectivamente.            #
#              Si tablero_prov no se ha generado correctamente, sale, con $v0=-1, sin realizar ninguna             #
#              acción, con lo que tablero_print queda intacto y las coordenadas de la pieza en juego siguen        #
#              intactas.                                                                                           #
# Parámetros:                                                                                                      #
# 	$a0 = la dirección de tablero.                                                                                 #
#	$a1 = la dirección del tablero tablero_prov.                                                                   #
#	$a2 = la dirección del tablero tablero_print.                                                                  #
#   $a3 = la dirección de la matriz de la pieza en juego.                                                          #
# Devuelve:                                                                                                        #
# 	$v0 = un 0 si tablero_prov se ha generado correctamente y un -1 si no se ha                                    #
#         generado correctamente. Este valor, -1, se utiliza, en la sección main si la acción ha sido abajo,       #
#         pues hay que “fijar” la pieza en juego, y generar una nueva pieza.                                       #                                                                              #
####################################################################################################################
Genera_prov:
	li		$t0, 0							# Cargamos un inmediato
	li		$t1, 3							# Cargamos un inmediato
	lb		$t2, cod_ocupado				# Cargamos codigo ocupado
	li		$t3, 0							# Cargamos un inmediato
	li		$t4, 0							# Cargamos un inmediato
	lb		$t5, tam_piezas

	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	jal		Copia_matriz					# Saltamos a la rutina
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos


	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	jal		comprueba_casilla				# Saltamos a la rutina
	bnez	$v0, casilla_ocupada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
bucle_genera:
	beq		$t5,$t0, fin_genera2
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a1, $t3
	move	$a2, $t4
	move	$a0, $a3
	li		$a3, 4							# Cargamos un inmediato
	
	jal		Obten_celda						# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	bne		$v0, $zero, bucle_insertar
	addi	$t0, $t0, 1
	beq		$t1, $t4, fin_linea_pieza
	addi	$t4, $t4, 1
	j		bucle_genera					# Saltamos a la rutina indicada
	
fin_linea_pieza:
	li		$t4, 0							# Cargamos un inmediato
	addi	$t3, $t3, 1
	j		bucle_genera					# Saltamos a la rutina indicada
	
bucle_insertar:
	add	    $t6, $t3, $s2
	add		$t7, $t4, $s3
	
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos un temporal
	sw 		$t7, 48($sp)					# Guardamos un temporal
	sw 		$t6, 44($sp)					# Guardamos un temporal
	sw 		$t5, 40($sp)					# Guardamos un temporal
	sw 		$t4, 36($sp)					# Guardamos un temporal
	sw 		$t3, 32($sp)					# Guardamos un temporal
	sw 		$t2, 28($sp)					# Guardamos un temporal
	sw 		$t1, 24($sp)					# Guardamos un temporal
	sw 		$t0, 20($sp)					# Guardamos un temporal
	sw 		$a3, 16($sp)					# Guardamos la direccion de tablero
	sw 		$a2, 12($sp)					# Guardamos la direccion de tablero_prov
	sw 		$a1, 8($sp)						# Guardamos la direccion de tablero_print
	sw 		$a0, 4($sp)						# Guardamos la direccion
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move 	$a0, $a1
	move 	$a1, $t6
	move	$a2, $t7
	lb 		$a3, columnas
	
	jal 	Obten_celda						# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	beq		$t2, $v0, casilla_ocupada

	addi 	$sp, $sp, -56					# Apilamos
	sw 		$t8, 52($sp)					# Guardamos el temporal 
	sw 		$t7, 48($sp)					# Guardamos el temporal 
	sw 		$t6, 44($sp)					# Guardamos el temporal 
	sw 		$t5, 40($sp)					# Guardamos el temporal 
	sw 		$t4, 36($sp)					# Guardamos el temporal 
	sw 		$t3, 32($sp)					# Guardamos el temporal 
	sw 		$t2, 28($sp)					# Guardamos el temporal 
	sw 		$t1, 24($sp)					# Guardamos el temporal 
	sw 		$t0, 20($sp)					# Guardamos el temporal 
	sw 		$a3, 16($sp)					# Guardamos la direccion 
	sw 		$a2, 12($sp)					# Guardamos la direccion 
	sw 		$a1, 8($sp)						# Guardamos la direccion 
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno retorno
	
	move 	$a0, $a1
	move 	$a1, $t6
	move	$a2, $t7
	move 	$a3, $s5
	
	jal		Cambia_celda					# Saltamos a la rutina indicada
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# Cargamos  la direccion 
	lw 		$a1, 8($sp)						# Cargamos  la direccion 
	lw 		$a2, 12($sp)					# Cargamos  la direccion 
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$t8, 52($sp)					# Cargamos el temporal
	addi 	$sp, $sp, 56					# Desapilamos

	
	addi	$t0, $t0, 1
	addi	$t4, $t4, 1
	j		bucle_genera					# Saltamos a la rutina indicada
	
casilla_ocupada:
	li		$v0, -1							# Cargamos un inmediato
	j		fin_genera						# Saltamos a la rutina indicada
	
fin_genera2:	
	li 		$v0,0							# Cargamos un inmediato
	
fin_genera:
	addi 	$sp, $sp, -56					# Apilamos
	sw 		$v0, 52($sp)					# Guardamos la direccion 
	sw 		$t7, 48($sp)					# Guardamos un temporal
	sw 		$t6, 44($sp)					# Guardamos un temporal
	sw 		$t5, 40($sp)					# Guardamos un temporal
	sw 		$t4, 36($sp)					# Guardamos un temporal
	sw 		$t3, 32($sp)					# Guardamos un temporal
	sw 		$t2, 28($sp)					# Guardamos un temporal
	sw 		$t1, 24($sp)					# Guardamos un temporal
	sw 		$t0, 20($sp)					# Guardamos un temporal
	sw 		$a3, 16($sp)					# Guardamos la direccion de tablero
	sw 		$a2, 12($sp)					# Guardamos la direccion de tablero_prov
	sw 		$a1, 8($sp)						# Guardamos la direccion de tablero_print
	sw 		$a0, 4($sp)						# Guardamos la direccion 
	sw 		$ra, 0($sp)						# Guardamos la direccion de retorno
	
	move	$a0, $a1
	move	$a1, $a2
	
	jal		Copia_matriz					# Saltamos a la rutina
	
	lw 		$ra, 0($sp)						# Cargamos la direccion de retorno
	lw 		$a0, 4($sp)						# cargamos la direccion 
	lw 		$a1, 8($sp)						# Cargamos la direccion de tablero_print
	lw 		$a2, 12($sp)					# Cargamos la direccion de tablero_prov
	lw 		$a3, 16($sp)					# Cargamos la direccion de tablero
	lw 		$t0, 20($sp)					# Cargamos el temporal
	lw 		$t1, 24($sp)					# Cargamos el temporal
	lw 		$t2, 28($sp)					# Cargamos el temporal
	lw 		$t3, 32($sp)					# Cargamos el temporal
	lw 		$t4, 36($sp)					# Cargamos el temporal
	lw 		$t5, 40($sp)					# Cargamos el temporal
	lw 		$t6, 44($sp)					# Cargamos el temporal
	lw 		$t7, 48($sp)					# Cargamos el temporal
	lw 		$v0, 52($sp)					# Guardamos la direccion de retorno
	addi 	$sp, $sp, 56					# Desapilamos

	move	$s0,$s2							# Actualizamos la fila
	move	$s1,$s3							# Actualizamos la columna
	
	jr 		$ra								# Terminamos la rutina y volvemos

####################################################################################################################
# num_aleatorio                                                                                                    #
# Descripción: Dada una semilla y una cota superior, genera un número pseudoaleatorio entre 0 y                    #
# la cota – 1.                                                                                                     #
# Parámetros:                                                                                                      #
# $a0 = Cota superior para el número aleatorio.                                                                    #
# Devuelve:                                                                                                        #
# $v0 = Número aleatorio generado.                                                                                 #
####################################################################################################################
num_aleatorio:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addu $t0, $2, $t0
	addu $t0, $3, $t0
	addu $t0, $4, $t0
	addu $t0, $5, $t0
	addu $t0, $6, $t0
	addu $t0, $7, $t0
	addu $t0, $9, $t0
	addu $t0, $10, $t0
	addu $t0, $11, $t0
	addu $t0, $12, $t0
	addu $t0, $13, $t0
	addu $t0, $14, $t0
	addu $t0, $15, $t0
	addu $t0, $16, $t0
	addu $t0, $17, $t0
	addu $t0, $18, $t0
	addu $t0, $19, $t0
	addu $t0, $20, $t0
	addu $t0, $21, $t0
	addu $t0, $22, $t0
	addu $t0, $23, $t0
	addu $t0, $24, $t0
	addu $t0, $25, $t0
	addu $t0, $26, $t0
	addu $t0, $27, $t0
	addu $t0, $28, $t0
	addu $t0, $30, $t0
	addu $t0, $31, $t0
	
	divu $t0, $a0
	mfhi $v0

	lw $ra, 0($sp) 						#Volvemos a donde nos llamaron
	addi $sp, $sp, 4
	jr $ra

####################################################################################################################
####################################################################################################################
############### REALIZADO POR LOS ALUMNOS: PEDRO MIGUEL NAVARRO LORENTE Y JAVIER GARCIA - VIDAL SIMON ##############
################################## 1º I.T.I GESTIÓN GRUPO 1   ASIGNATURA: E.T.C. ###################################
######################################### PROFESOR: JOSE PASCUAL BELDA MORENO ######################################
####################################################################################################################
####################################################################################################################
####################################################################################################################