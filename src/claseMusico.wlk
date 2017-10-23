import Cancion.*

class Musico {
	var albumes = #{}
	var tocaEnGrupo 
	var habilidad
	var cancionesPropias = #{}
	var metodoCobro
constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria,unMetodoCobro){
		tocaEnGrupo = sTocaEnGrupo
		habilidad = unaHabilidad
		albumes= unosAlbumes
		cancionesPropias = cancionesDeAutoria
		metodoCobro = unMetodoCobro
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


method cobro(){

return metodoCobro.cobrar()
}

method cambiarMetodoCobrar (otroMetodoCobro) {

metodoCobro=otroMetodoCobro
}


}

class MusicoDeGrupo inherits Musico {
var habilidadDeGrupo
constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,unaHabilidadDeGrupo, cancionesDeAutoria, unMetodoCobro) =  super(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria, unMetodoCobro) {
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

  constructor(sTocaEnGrupo, unaHabilidad, unosAlbumes,laPalabra, cancionesDeAutoria, unMetodoCobro) = super(sTocaEnGrupo, unaHabilidad, unosAlbumes, cancionesDeAutoria, unMetodoCobro) {
        palabraCantaBien = laPalabra
    }



	override method interpretaBien(unaCancion){
		super(unaCancion)
		return unaCancion.contiene(palabraCantaBien) 
		}
}
	class Palabreros inherits Musico {
  		method interpretaBien(unaCancion, unaPalabra)
		{ 
		 return unaCancion.tieneLaPalabra(unaPalabra)
 		}
	}

	class Largueros inherits Musico{
		method interpretaBien(unaCancion,segundos) 
		{
			return unaCancion.duraMasQue(segundos) 
		}
	}

	class Impareros inherits Musico {
 	        override method interpretaBien(unaCancion) 
                {
 	                return unaCancion.duracion().odd()
 	        }
 	}






