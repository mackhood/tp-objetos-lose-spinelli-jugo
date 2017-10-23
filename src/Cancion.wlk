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

	method tamanioDeLetra(){
		return letra.size()
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
		return canciones.max{ cancion => cancion.tamanioDeLetra()}
	}

method seVendioEl75x100toOMas(){
		return unidadesVendidas/unidadesTotales >= 0.75
	}

}

object  cisne  inherits Cancion (elViento,312, "Hoy el viento 
  se abrio quedo vacio el aire una vez mas y el manantial broto y
  nadie esta aqui y puedo ver que solo estallan las hojas al brillar", joaquin)  {}
  
object  aliciaEnElPaís  inherits Cancion (elViento, 510, "Quién sabe Alicia, este 
  país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, 
  ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, 
  el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.", luisAlberto) {}
   
object laFamilia  inherits Cancion  (laFamilia,264,  "Quiero brindar por mi gente sencilla, por el amor 
  brindo por la familia", lucia)  {}
  
