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

method duracionDeSuObra(){
		return albumes.sum({album => album.duracionTotal()})
	}

method laPego(){
		return albumes.all({album => album.seVendioEl175x100toOMas()})

}

}
class MusicoDeGrupo inherits Musico {


method modificarHabilidad(cantidad){
habilidad += cantidad
}

}

class MusicoVocalista inherits Musico {
var palabraCantaBien

method interpretaBien(unaCancion){
	return unaCancion.contiene(palabraCantaBien)
	}

}
