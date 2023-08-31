import wollok.game.*

object auto {

	var image = "autitoRojo.png"
	var position = game.at(0,0)

	method image() = image
	method position() = position
	method image(nuevaImagen) {image = nuevaImagen}
	method posicion(nuevaPosicion) {position = nuevaPosicion}
	
	method moverArriba(){
		if (position.y() < game.height() - 1)
			position = position.up(1)
	}
	method moverDerecha(){
		if (position.x() < game.width() - 1)
			position = position.right(1)
	}
	method moverAbajo(){
		if (position.y() > 0)
			position = position.down(1)
	}
	method moverIzquierda(){
		if (position.x() > 0)
			position = position.left(1)
	}
	
}
