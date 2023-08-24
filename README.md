# Introducción a Wollok Game

### El tablero
Para poder generar el tablero de juego en el proyecto de Wollok, vamos a crear, dentro de la carpeta "src", un nuevo archivo (podría llamarse "program.wpgm") que será un Programa Wollok.
Dentro de este programa, escribimos el siguiente código:

```
import wollok.game.*

program miPrimerWollokGame {
	// que arranque el juego!
	game.start()
}
```

Si guardamos y ejecutamos este programa, tendremos nuestro primer tablero!

### Modificando el tablero

Podemos cambiar el tamaño y fondo del tablero, y muchas otras cosas más!!! 
Por ahora y para comenzar a aprender wollok game, vamos a agregarle algunas cosas más a nuestro programa para modificar las dimensiones y agregarle una imagen de fondo:

```
import wollok.game.*

program miPrimerWollokGame {
	// límites del tablero de juego
	game.width(14)
	game.height(8)

	// fondo del tablero de juego
	game.boardGround("empedrado.jpg")

	// que arranque el juego!
	game.start()
}
```

### Agregando un objeto con imagen y posición al tablero

Primero debemos crear un nuevo archivo Wollok, dentro de la carpeta "src", al que llamaremos "auto.wlk", donde iremos a programar el objeto que será, en este ejemplo, el elemento visual que agregaremos al tablero. 
Dentro del archivo, tendremos este código:

```
import wollok.game.*

object auto {
	// definimos los atributos para imagen y posición de nuestro elemento
	var image = "autitoRojo.png"
	var position = game.at(0,0)

	// definimos los getter y setter para poder preguntarle y cambiarle 
	// a nuestro elemento su imagen y posición. 
	method image() = image
	method position() = position
	method image(nuevaImagen) { image = nuevaImagen }
	method posicion(nuevaPosicion) { position = nuevaPosicion }
}

```
Guardamos el archivo de wollok y ahora vamos a editar el programa "program.wpgm" para indicarle
que agregue a nuestro auto. Debemos importar el archivo para que el programa pueda conocer
a nuestro nuevo objeto y además, le indicaremos al juevo que agregue la visual, quedándonos el código de la siguiente forma:

```
import wollok.game.*
import auto.*

program miPrimerWollokGame {
	// límites del tablero de juego
	game.width(14)
	game.height(8)

	// fondo del tablero de juego
	game.boardGround("empedrado.jpg")

	// agregamos a nuestro objeto auto
	game.addVisual(auto)

	// que arranque el juego!
	game.start()
}
```

Volvemos a ejecutar el programa, y ahora aparecerá nuestro autito en la primer posición o celda del tablero! Fila 0, columna 0. (indicado en game.at(0,0))

Desde acá, les dejamos para que "jueguen" con el resto de los mensajes que entiende 
game, entre los cuales podrán hacer muchas cosas como por ejemplo:

- programar las teclas de cursor para que se mueva por el tablero.
- programar otras teclas para que el juego o los objetos cambien su imagen, posición, o se ejecute alguna acción.
- hacer que ocurran distintas cosas cuando chocan 2 o más objetos.
- crear eventos automáticos.
- etc etc!!

En la carpeta "assets" encontrarán otras imágenes para que vayan probando, y si se animan, crear más objetos (más autitos), cada uno con una imagen diferente, y lograr que se muevan. Para quienes acepten desafíos más extremos, tal vez colocar en el tablero algún obstáculo como por ejemplo una pared (hay 2 imágenes en assets) y luego programar algún evento si algún autito las choca (explorar el método "onCollideDo(objeto,{accion})")

Toda la documentación sobre wollok game la encuentran en <https://www.wollok.org/documentacion/conceptos/>

