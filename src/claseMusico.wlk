import Cancion.*

class Musico {
	var albumes = #{}
	var tocaEnGrupo 
	var habilidad

constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes){
		tocaEnGrupo = sTocaEnGrupo
		habilidad = unaHabilidad
		albumes= unosAlbumes
		
	}

method habilidad()
{
	return habilidad
}

method esMusicoMinimalista(){
	return albumes.all({ album => album.tieneTodasCancionesCortas()})	
	}

method cancionesQueContienenLaPalabra(palabra){
  		return albumes.map({ album => album.contienen(palabra) })
 }

method duracionDeSuObra(){
		return albumes.sum({album => album.duracionTotal()})
	}

method laPego(){
		return albumes.all({album => album.seVendioEl175x100toOMas()})

}


method agregarAlbum (unAlbum) {

albumes.add(unAlbum)
}

}
class MusicoDeGrupo inherits Musico {
var habilidadDeGrupo
constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,unaHabilidadDeGrupo) =  super(sTocaEnGrupo, unaHabilidad, unosAlbumes) {
habilidadDeGrupo = unaHabilidadDeGrupo
 

method modificarHabilidad(habilidadDeGrupo){
habilidad += cantidad
}

}

class MusicoVocalista inherits Musico {
var palabraCantaBien

  constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,laPalabra) = super(sTocaEnGrupo, unaHabilidad, unosAlbumes) {
        palabraCantaBien = laPalabra
    }



method interpretaBien(unaCancion){
	return unaCancion.contiene(palabraCantaBien)
	}

}
