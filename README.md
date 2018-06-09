# Tetris-assembler-MIPS-R2000

Este Tetris programado en ensamblador MIPS-R2000, es una adaptacion del Tetris original con algunas caracteristicas personalizadas que lo hacen diferente al clasico Tetris.

Para poder probar el codigo y el juego en si es necesario utilizar un emulador de MIPS (como por ejemplo PCSpim):
- http://spimsimulator.sourceforge.net/

Este proyecto fue realizado por: 
- Javier Garcia-Vidal Simón 
- Pedro Miguel Navarro Lorente

# Introducción

Antes de empezar a comentar los aspectos más relevantes de las rutinas principales, quiero comentar brevemente los cambios más relevantes en el segmento de datos del código fuente (.data), que considero que necesitan ser comentados.

-Empezar por la ampliación que se le ha realizado a piezas_x y piezas_y los cuales han sido ampliados debido a la rutina de mejora girador_piezas y también a que se han introducido 2 piezas más que las existentes en el juego original ( pieza C y pieza cuadrado sin esquina).Estas han sido ordenadas en memoria en función de la pieza que es y seguido de sus respectivos giros para hacer que de esta manera funcione correctamente las formulas que calculan su dirección en el segmento de texto en el código fuente.

-Seguimos con el gran número de matrices que se han introducido debido a que los giros se han realizado poniendo los giros en memoria y no modificando la pieza a girar. Las matrices de las piezas se han colocado de la siguiente manera, la pieza_0 seguido de las otras 3 matrices correspondientes a sus giros y así con todas las piezas incluidas las añadidas por nosotros.

-Se han añadido mensajes de error correspondientes a sus errores o movimientos no validos dentro del juego. Añadir a estos mensajes los existentes de la rutina de mejora ver_ranking. Por ejemplo se han añadido mensajes de error cuando una pieza intenta ir mas a allá de los límites establecidos por el tablero, o intentar realizar un movimiento que será detectado como invalido porque existe una pieza fija en ese lugar y también cuando al usuario se le pide que introduzca un numero para elegir su opción, si esta numeración no existe se le avisa de ello y se le vuelve a preguntar. Volviendo a la rutina de mejora ver_ranking, los textos que esta imprime son para informar al usuario y pedir su nombre para conocer quien ha realizado el record.

-Existen en memoria los datos que se usan para calcular y recoger los datos que hacen referencia a la rutina de mejora imprimir_status, los cuales informan al usuario durante toda la partida de el estado del juego como nivel, puntuación, mejor puntuación conseguida o líneas que se han limpiado. Añadiendo a estos los existentes también de lee_numero que se usan en esta rutina de mejora para calcular la velocidad del polling entre otras cosas y también de imprime_tablero ya que a este último se le ha añadido bordes para darle mas estética al tablero de tetris.

-Se han ampliado el numero de caracteres ASCII utilizados, y se han escrito en memoria para su utilización en imprime_tablero con el objetivo de realizar la mejora que consiste en que cada pieza tenga un carácter distinto a las demás para así distinguirlas, se han escogido los caracteres ASCII que pcspim es capaz de representar.


-También se puede encontrar pieza_siguiente y pieza_giro, la primera informa y guarda de cuál será la siguiente pieza que saldrá cuando se termine de jugar con la que se esté jugando en ese momento y la segunda informa en el giro en el que se encuentra la pieza que esté en juego.


-Por ultimo especificar que también se han modificado los valores iníciales de algunos datos de memoria como por ejemplo num_piezas debido a que se han incorporado mas piezas al juego aumentado este de 7 a 9.  Para terminar se han añadidos datos que están constantemente utilizándose en el código y para mayor comodidad se han añadido en memoria como por ejemplo, x e y , y también columnas y filas.




# DIRECCION CELDA

En esta rutina que se encarga de calcular la posición de memoria en la que se encuentra el valor de la celda se intentado optimizar lo máximo posible la fórmula para calcular la posición de manera que esta consiste en, multiplicar la fila por el numero de columnas de la matriz de la que queremos obtener su posición en memoria mas la columna, lo obtenido de aquí se lo sumamos a la dirección de la matriz de la que queremos calcular la posición y la movemos a $v0.

Formula: ((fila * columnas matriz) + (columna)) + (dirección memoria matriz a calcular posición)

Esta es la fórmula más sencilla de todas las que hemos barajado que por lo menos han sido 3 y además de ser simple, es la más eficaz en cuanto a la exactitud de obtener lo que se pide en ella.
Esta fórmula implica también el no tener que realizar 2 formulas distintas una para calcular las posiciones en los tableros y otra para calcular las posiciones en las piezas.

# OBTEN CELDA

En la rutina obtén_celda no se ha modificado ni añadido nada con respecto a lo indicado en el documento de prácticas. Tampoco ha implicado gran problema su realización. Esta se ha realizado ciñéndose a lo pedido en el documento.


# CAMBIA CELDA

En cuanto a cambia_celda se ha realizado una pequeña modificación que consiste, en que hemos utilizado la pila para guardar el valor que contiene $a3 porque este es machacado en la rutina dirección celda ya que esta se utiliza para aspectos distintos en cada rutina y son imprescindibles en ambas.


# IMPRIME TABLERO

Esta rutina no nos ha implicado un gran problema en cuanto a su modo básico sin mejoras, pero para incluir algunas mejoras tuvimos ciertas dificultades por lo que en algunas ocasiones se opto por realizarlas de otra forma que no nos implicase tanta complicación y además creímos que de esta manera le dábamos personalidad. Este problema fue concretamente el añadir el cuadro de la siguiente pieza, de modo que apareciese al lado del tablero en la parte superior. Debido a lo comentado y que consideramos añadir personalidad y nuestro estilo a este tetris se opto por incluir unos bordes alrededor de la matriz de la siguiente pieza la cual se imprime tal cual y que se encuentra colocada justo antes de ser imprimido el tablero, es decir, justo encima de este.
Lo siguiente a comentar son los bordes decorativos que se han implementado también al tablero de juego, se dividen en borde superior ,borde lateral y borde inferior lo que conforma un simple borde que parece de una sola pieza. Añadir que también se han añadido espacios cuando se imprime entre pieza y pieza para dar de esta manera otro aspecto al tablero y hacer que se vea más claramente.
Destacar también la inclusión en esta rutina, la mejora que se encarga de poner a cada pieza un código ASCII distinto para así distinguirla y provocar de este modo que se parezca más al juego original. La inclusión de esta se ha realizado añadiendo comparadores para reconocer que pieza es la que se encuentra en juego, como en $s4 tenemos el numero de la pieza en juego podemos pasarla por los comparadores para que estos reconozcan que pieza es y cargar su correspondiente código ASCII.


# INICIALIZA TABLERO

Esta rutina tampoco nos ha implicado gran dificultad ni problemas, hemos intentado hacerla lo más eficaz y simple posible. De manera que su funcionamiento consiste en pasar 1 por 1 por todas las casillas del tablero y guardar en cada posición el cod_vacio (-2) hasta que se llega a la última posición del tablero que en este caso es (200) o (199) si empezamos desde 0.


# LIMPIA FILA

La rutina a comentar ha sido sin duda alguna la que más problemas nos ha planteado, no nos referimos a dificultad, sino que hemos tenido muchos problemas para hacer que funcionasen correctamente.
Entre otras cosas y a pesar de dicho antes, eso ha sido así porque hemos querido buscar una fórmula o un método para que esta rutina fuese optima e intentar resumir la rutina de manera que esta no estuviese mucho tiempo haciendo operaciones innecesarias. Explicando resumidamente el funcionamiento que hemos realizado para esta rutina es el siguiente, la rutina va de arriba hacia abajo comprobando cada fila en busca de la fila que esté completamente ocupada por cod_ocupado (-3) para en caso de encontrarla limpiar esta, así hasta un máximo de 4 veces en busca de filas que estén completamente ocupadas, y ha sido un máximo de 4 veces porque según las piezas existentes no es posible limpiar más de 4 filas de una sola tacada. A parte de eso la gran optimización implementada se encuentra a la hora de comprobar las filas que están ocupadas completamente. Nosotros hemos puesto que compruebe la 1º celda de la pieza en cuanto encuentre un código vacio, que no continúe con esa fila y salte a la siguiente, de manera que la comprobación de todas las filas se reduce a unas pocas con este método.
Tenemos que destacar también la existencia en una parte de la rutina, una subrutina que en caso de limpiar una fila esta se contabiliza y se guarda en memoria y se actualiza los puntos, basándonos en el nivel que se esté jugando.


# COPIA MATRIZ

La rutina Copia_matriz no ha implicado gran problema, y no se han realizado modificaciones extras sobre ella. La rutina recorre cada una de las posiciones de los 2 tableros obteniendo los valores de uno con la rutina Obten_celda y guardándolo en el otro tablero con Cambia_celda. Lo más destacado quizás sea la necesidad de apilar antes de la llamada de cada rutina y desapilar a la vuelta de ella para conservar los valores que se está utilizando en la rutina.


# GENERA PROV

Después de limpia_fila , genera_prov ha sido la siguiente con la que más problemas hemos tenido para conseguir que todo funcionase  correctamente y concorde a lo expuesto en la documentación de las practicas.
Lo más destacado de esta rutina es que hemos incluido una llamada a una rutina externa que hemos creado a parte (compruba_casilla) que se encarga de comprobar que el movimiento que se va a plasmar en el tablero es correcto y que en dicho movimiento no chocara con ninguna pieza fija en el tablero. Por lo demás esta rutina realiza lo indicado en el documento de prácticas.

# NUM ALEATORIO

Esta rutina ya estaba hecha pero solamente se ha modificado las sumas add por addu para que no nos saltase un error de overflow, que no dejaba continuar al programa.


# VER RANKING

Esta rutina de mejora consiste simplemente en recordar al jugador que mejor haya puntuado, ofreciéndole identificarse con el nombre que él quiera. El funcionamiento de la rutina consiste en que cuando se acaba el juego, es decir, el jugador pierde la partida este inmediatamente comprueba si la puntuación obtenida por este es más alta, si es así se pasa a pedir el nombre con que desea registrar su puntuación y informar de cuál ha sido su puntuación final. En caso contrario se informa al jugador que no ha superado el record actual y se reinicia la partida para poder empezar de nuevo, también se puede escoger la opción del menú principal ver ranking para que el jugador sea informado de quien dispone de la máxima puntuación. En caso de no existir record no se permitirá al jugador consultar el record, de manera que si este lo elige se le informa de que no hay record registrados y se vuelve al menú principal.


# PARTIDA NIVEL

La rutina de mejora partida_nivel es una opción que se ha añadido al menú principal y que permite al jugador cuando este lo elige en el menú principal del juego poder empezar en el nivel que él quiera, siempre y cuando este se encuentre dentro del rango establecido y del que se le informa al usuario tanto como si es de 1-20 como si es de 1-99, en este caso es de 1-20, hemos preferido menos niveles y que al subir cada uno de estos se note lo suficiente la velocidad de bajada de la pieza. El usuario no podrá elegir un nivel fuera de estos rangos y se le avisara de ello para que pueda rectificar y poner otro nivel.


# LEE NUMERO

Lee_numero es la rutina sobre la que se ha incorporado el polling, y que se encarga entre otras cosas de que la pieza baje sola pasado cierto tiempo, el cual se ve modificado dependiendo del nivel en el que se esté jugando en ese momento.
Formula: ((nivel * base) – dificultad establecida previamente en memoria)
De esta manera conseguimos que el juego sea más versátil y quitarle monotonía. A parte de todo esto lee_numero también permite que al pulsar las teclas adecuadas para realizar movimientos u otras acciones estas se ejecuten directamente sin tener que presionar el botón enter para introducir el dato, además como al igual que el menú principal se ha incluido la optimización de que informe al jugador cuando ha introducido una opción incorrecta.


# IMPRIMIR STATUS

Esta rutina se encarga simplemente de imprimir por pantalla la información fundamentalmente necesaria de la partida. Las líneas que llevamos limpiadas, el nivel sobre el que estamos jugando, la puntuación que llevamos hasta el momento y por último la mejor puntuación conseguida hasta el momento si es que existe alguna. Explicaremos como se contabilizan todas ellas en OTRAS MEJORAS Y OPTIMIZACIONES. Por último destacar que a esta rutina también se le han añadido bordes decorativos para mejor estética con respecto a la unidad que forma con el tablero cuando se está jugando.
Todos los datos utilizados para imprimir por pantalla tal información, es almacenada en memoria ya que se le han guardo en memoria para una mayor comodidad, estos se van actualizando en los momentos convenientes y esta rutina los datos más actuales hasta el momento.



# SIGUIENTE PIEZA

Rutina de mejora que se encarga de informar al jugador cada vez que se imprima el tablero de la pieza que vendrá después, una vez haya acabado con la que actualmente este jugando y conociendo esto que jugador puedo actuar en consecuencia. La pieza es imprimida antes del tablero de juego en la parte superior de este, también dispone de bordes para mayor estética y se decidió por imprimir la matriz entera de la pieza, de manera que los unos serán imprimidos como cod_ocupado y los 0 serán imprimidos como cod_vacio.

# BAJADA DIRECTA

La consideramos una del las rutinas de mejora más importante dentro del juego, 1º porque su funcionamiento e implementación son sencillos y 2º por su gran utilidad dentro del juego, ya que se nos hacia eterno el poder bajar un pieza hasta abajo del tablero bajando una a una cada posición. Asi que como ya hemos comentado el funcionamiento de esta rutina consiste en que cuando el jugador pulsa el botón de bajada directa, hace que la pieza baja completamente de un tiron hasta abajo o en caso de haber piezas cuando choca contra una de estas.

# GIRADOR PIEZAS

La rutina de mejora girador_piezas se encarga de que todas las piezas usadas en el juego puedan ser utilizadas por esta rutina de forma que están puedan ser giradas, cada pieza siempre gira hacia la derecha y todas las piezas poseen  3 giros mas la posición estándar con la que salen. Aunque hay piezas como la pieza en forma de 2 y la pieza en forma de z que realmente disponen de 1 giro real ya que el siguiente giro es igual a la pieza estándar de ambas, pero para poder calcular la matriz a usar correctamente se han añadido todos los giros a todas las piezas para que las cuentas cuadren.

# OTRAS MEJORAS Y OPTIMIZACIONES

Aquí se pondrán las optimizaciones o mejoras que no hayan sido comentadas anteriormente.

-En girador_piezas se ha añadido a esta rutina 3 optimizaciones, la 1º es que no se permita el giro de una pieza si esta al girar se sale del tablero por la derecha ya que por la izquierda no es posible, la 2º es parecida a la 1º pero en este caso que no pueda pasar el tope del tablero como sería el caso del palo tumbado e intentar girarlo cuando estas casi pegado al fondo del tablero ya que esto supondría atravesarlo y por último la 3º que consiste en que una pieza tampoco pueda ser girada si en el giro se comiese a una pieza fija del tablero. Para todas estas optimizaciones se ha implementado un mensaje que avisa de todos estos actos.

-La optimización realizada en el código fuente del tetris en general, se trata de la forma en que calculamos las puntuación de cada jugada de forma que estas sean lo más versátiles posibles, para que no se gane el mismo número de puntos al fijar una pieza o al limpiar una fila en nivel 1 que en nivel 20. Formula: nivel * puntuación mínima establecida (en nuestro caso 5 por fijar y 100 por limpiar una fila).

-También se ha optimizado, para informar al jugador de cuando ha llegado al final de columnas y no puede moverse mas allá tanto si nos vemos a izquierda o derecha, también se informa al jugador cuando mueve a cualquiera de los dos lados posibles y en ese movimiento se encuentra una pieza fija, de forma que impide la realización del mismo e informa al jugador de que ese es un movimiento invalido

-Por ultimo también se informa al jugador cuando ha acabado el juego.
