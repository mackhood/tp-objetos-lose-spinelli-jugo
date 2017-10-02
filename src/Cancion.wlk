class Cancion {
	var titulo
	var duracion
	var letra
	
	constructor(tituloDelTema, duracionDelTema, letraDelTema){
		titulo = tituloDelTema
		duracion = duracionDelTema
		letra = letraDelTema
	}

	method duraMasQue(duracionDelTema){
		return duracion > duracionDelTema
	}
	
	method contiene(unaPalabra){
		return letra.contains(unaPalabra)
	}
	
	method esCancionCorta(){
		return duracion < 180
	}
	
	method duracion(){
		return duracion
	}

	method letras(){
		return letra.size()
	}

}
 
class Album {
var titulo
var canciones= #{}
var fecha
var unidadesTotales
var unidadesVendidas

constructor (unTitulo,unasCanciones,unaFecha,un,ven) {
titulo =unTitulo
canciones = unasCanciones
fecha = unaFecha
unidadesTotales = un
unidadesVendidas = ven
}

method tieneTodasCancionesCortas(){
		return canciones.all{cancion => cancion.esCancionCorta()}
	}
	
method contienen(palabra){
  		return canciones.filter{cancion => cancion.contiene(palabra)}
  		
  		}
		
method duracionTotal(){
	return canciones.sum{cancion => cancion.duracion()}
	
}

method laCancionMasLarga(){
		return canciones.max{ cancion => cancion.letras()}
	}

}
