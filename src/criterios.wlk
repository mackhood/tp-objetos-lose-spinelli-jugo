import Cancion.*

object criterioPorLetra {
		method comparar(unaCancion, otraCancion){
			if(unaCancion.tamanioDeLetra() > otraCancion.tamanioDeLetra()){
				return unaCancion
			}
			else{
				return otraCancion
			}
		}
	}
