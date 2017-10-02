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
}
class MusicoDeGrupo inherits Musico {


method modificarHabilidad(cantidad){
habilidad += cantidad
}

}

class MusicoVocalista inherits Musico {

}
