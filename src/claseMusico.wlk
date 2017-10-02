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

method esMusicoMinimalista(){
	return albumes.all({ album => album.tieneTodasCancionesCortas()})	
	}

method cancionesQueContienenLaPalabra(palabra){
  		return albumes.map({ album => album.contienen(palabra) })
 }
	

}
class MusicoDeGrupo inherits Musico {


method modificarHabilidad(cantidad){
habilidad += cantidad
}

}

class MusicoVocalista inherits Musico {

}
