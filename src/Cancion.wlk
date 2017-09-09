class Cancion {

	var duracion
	var letra
	
	constructor(duracionDelTema, letraDelTema){
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
