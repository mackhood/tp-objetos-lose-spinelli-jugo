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
