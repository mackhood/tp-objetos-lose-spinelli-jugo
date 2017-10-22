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
		
		
method interpretaBien(unaCancion){
	var valor
	if ( (unaCancion.autor == musico) or (habilidad>60){
	valor= true 
	
	}
	else{ valor= false  }

}


method agregarAlbum (unAlbum) {

albumes.add(unAlbum)
}

}

class MusicoDeGrupo inherits Musico {
var habilidadDeGrupo
constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,unaHabilidadDeGrupo) =  super(sTocaEnGrupo, unaHabilidad, unosAlbumes) {
habilidadDeGrupo = unaHabilidadDeGrupo
 }

method modificarHabilidad(cantidad){
habilidad += cantidad
}



	

override method interpretaBien(unaCancion) {
super(unaCancion)
valor = unaCancion.duraMasQue(300)
return valor

}

}

class MusicoVocalista inherits Musico {
var palabraCantaBien

  constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,laPalabra) = super(sTocaEnGrupo, unaHabilidad, unosAlbumes) {
        palabraCantaBien = laPalabra
    }



override method interpretaBien(unaCancion){
	
	super(unaCancion)
	valor= unaCancion.contiene(palabraCantaBien) 
	return valor	}
	}

}
