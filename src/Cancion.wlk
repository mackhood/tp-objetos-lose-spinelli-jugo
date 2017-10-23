class Cancion {
	var titulo
	var duracion
	var letra
	var autor
	
	constructor(tituloDelTema, duracionDelTema, letraDelTema, autorDelTema){
		titulo = tituloDelTema
		duracion = duracionDelTema
		letra = letraDelTema
		autor = autorDelTema
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
	
	
	method comparar( otraCancion) {
	return self.criterio() > otraCancion.criterio()  }
	
	method criterioPorTitulo () {
	return titulo.size() }
	
	method criterioLetra () {
	return letra.size()
	}
	
	method criterioPorDuracion () {
	return duracion()
	}
	
	method letra () {
	return letra 
	}
	
	
	method tieneLaPalabra(palabra){ 
 	return letra.contains(palabra)
 	}
	
	
	method remix () = new Cancion(duracion*3 ,"mueve tu cuelpo baby "+ letra +" yeah oh yeah",titulo,autor)
	
	
	
	method mashup (listaDeCanciones) {
	
	var tituloMashup = listaDeCanciones.map({unaCancion => unaCancion.letra()}).fold("",{letraAcumulada,unaCancion => unaCancion +" " letraAcumulada})
	
	var duracionMashup = listaDeCanciones.map({unaCancion => unaCancion.duracion()}).max()
	return new Cancion(tituloMashup,duracionMashup,tituloMashup,autor) }
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

method seVendioEl75x100toOMas(){
		return unidadesVendidas/unidadesTotales >= 0.75
	}

}


