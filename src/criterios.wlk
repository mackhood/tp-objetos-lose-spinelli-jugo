import Cancion.*

object criterioPorTitulo {
		method comparar(unaCancion, otraCancion){
			if(unaCancion.size() > otraCancion.size()){
				return unaCancion
			}
			else{
				return otraCancion
			}
		}
	}

