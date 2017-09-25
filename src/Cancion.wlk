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
	

}

