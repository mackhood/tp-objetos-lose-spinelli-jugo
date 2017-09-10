import Cancion.*
import Presentaciones.*

object joaquin {
	var grupo = "Pimpinela"
	var habilidad = 20
	
	
	method cantaPresentacion (unaPresentacion) {
	if( unaPresentacion.hayUnoSolo() )
	     {  self.modificarHabilidad()
	             }
	else { return habilidad 
	}
	}
	
	 method modificarHabilidad() {
		habilidad += 5
	 }
	method interpretaBien(unaCancion){
		return unaCancion.duraMasQue(300)
		
	}
	
	method cobra(presentacion){
		if(presentacion.hayUnoSolo()){
			return 100
		}
		else return 50
	}
}

object lucia{
	var grupo = "Pimpinela"
	var habilidad = 70

	method cantaPresentacion (unaPresentacion) {
	if( unaPresentacion.hayUnoSolo() )
	     {  self.modificarHabilidad()
	             }
	else { return habilidad 
	}
	
	}
        method modificarHabilidad() {
		habilidad -= 20
	 }
	method interpretaBien(unaCancion){
		return unaCancion.contiene("familia")
	}

	//method cantaEnGrupo(presentacion){
	//	return presentacion.cantaEnGrupo(self)
	//}

	method cobra(presentacion) {
		if (presentacion.esConcurrida()){
			return 500
		}
		else return 400
	}

	//method habilidad(presentacion){
	//	if (self.cantaEnGrupo(presentacion)){
	//		return habilidad - 20
	//	}
	//	else return habilidad
	//}
}

object luisAlberto{
	var habilidad
	var valorDeLaGuitarra
	
	method modificarHabilidad() {}
	method usaLaFender(){
		valorDeLaGuitarra = 10
	}
	
	method usaLaGibson(estado){
		if(estado == "rota"){
			valorDeLaGuitarra = 5
		}
		else valorDeLaGuitarra = 15
	}
	
	method calcularHabilidad(){
		if(8*valorDeLaGuitarra < 100){
		return 8*valorDeLaGuitarra
		}
		else return 100
		}
	
	method interpretaBien(unaCancion){
		return true
	}
	
	method cobra(presentacion){
		if(presentacion.hastaSeptiembre()){
			return 1000
		}
		else 	return 1200
	}
	
	}


	
