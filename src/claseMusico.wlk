import Cancion.*

class Musico {
	var albumes = #{}
	var tocaEnGrupo 
	var habilidad
	var cancionesPropias = #{}

constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria){
		tocaEnGrupo = sTocaEnGrupo
		habilidad = unaHabilidad
		albumes= unosAlbumes
		cancionesPropias = cancionesDeAutoria
	}
method abandonarGrupo()
{
	tocaEnGrupo = false
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
				
method interpretaBien(unaCancion){
	return ((unaCancion.autor() == self) || (habilidad>60))
	}

method agregarAlbum (unAlbum) {
albumes.add(unAlbum)
}	

}

class MusicoDeGrupo inherits Musico {
var habilidadDeGrupo
constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,unaHabilidadDeGrupo, cancionesDeAutoria) =  super(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria) {
habilidadDeGrupo = unaHabilidadDeGrupo
 }

method modificarHabilidad(cantidad){
habilidad += cantidad
}
	

override method interpretaBien(unaCancion) {
super(unaCancion)
return unaCancion.duraMasQue(300)
	}
}

class MusicoVocalista inherits Musico {
var palabraCantaBien

  constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,laPalabra, cancionesDeAutoria) = super(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria) {
        palabraCantaBien = laPalabra
    }



override method interpretaBien(unaCancion){
	
	super(unaCancion)
	return unaCancion.contiene(palabraCantaBien) 
	}
}
