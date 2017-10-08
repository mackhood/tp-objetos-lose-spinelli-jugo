import Cancion.*
import Presentaciones.*
import claseMusico.*
object joaquin inherits Musico (true, 20, #{}) {
	var grupo = "Pimpinela"
	
	
	
	method cantaPresentacion (unaPresentacion) {
	if( unaPresentacion.hayUnoSolo() )
		{ return habilidad+5
		}
	else {  return habilidad
	} }
	
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

object lucia inherits (true, 70, #{}){
	var grupo = "Pimpinela"
	
	method cantaPresentacion (unaPresentacion) {
		if( unaPresentacion.hayUnoSolo() )
		{ return habilidad-20
		}
		else { return habilidad
		} }
	
	method interpretaBien(unaCancion){
		return unaCancion.contiene("familia")
	}

	

	method cobra(presentacion) {
		if (presentacion.esConcurrida()){
			return 500
		}
		else return 400
	}

	
}

object luisAlberto{
	var habilidad
	var valorDeLaGuitarra
	
	method modificarHabilidad() {}
	
	method valorGuitarra(unaGuitarra) {
	return unaGuitarra.valor()
	}
	
	method calcularHabilidad(){
	
	return 100.min(8*valorDeLaGuitarra)
		}
	
	method interpretaBien(unaCancion){
		return true
	}
	
	method cobra(presentacion){
		if (presentacion.antesQueFecha(presentacion.fecha(),(01,10,17))){
			return 1000}
			else { return 1200}
			}
	
	
	object gibson {
	var valor=10
	var estadoRota=false
	method estaRota (estadoRota){}
	method valor(){
	return valor}
	}

	object fender {
	var valor=15
	var estadoRota=false
	
	method estaRota (estadoRota) {
	return estadoRota}
	
	method valor() {
	if (estaRota(estadoRota)){
	valor= 5
	return valor}
	else return valor}
	
	method romper (){
	estadoRota=true
	}
	

}


object kike inherits MusicoDeGrupo (true,60,#{},20) {

}

object soledad inherits MusicoVocalista (false,55,#{},"amor") {
}




	
	
	
	

	
	
	


	
