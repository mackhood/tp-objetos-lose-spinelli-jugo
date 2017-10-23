import Cancion.*
import Presentaciones.*
import claseMusico.*
import maneraDeCobrar.*
object joaquin inherits MusicoDeGrupo (true, 20, #{}, 5, #{}, segunPersonas) {
	var grupo = "Pimpinela"
	
	
	
/*	method cantaPresentacion (unaPresentacion) {
	if( unaPresentacion.hayUnoSolo() )
		{ return habilidad+5
		}
	else {  return habilidad
	} }    (NO SE REEMPLAZARIA CON LA HABILIDAD DE MUSICO DE GRUPO?)  */
	
	override method interpretaBien(unaCancion){
		return unaCancion.duraMasQue(300)
		
	}
	
	method cobra(presentacion){
		if(presentacion.hayUnoSolo()){
			return 100
		}
		else return 50
	}
}

object lucia inherits MusicoVocalista  (true, 70, #{}, #{},"familia", segunCapacidad){
	var grupo = "Pimpinela"
	
	method cantaPresentacion (unaPresentacion) {
		if( unaPresentacion.hayUnoSolo() )
		{ return habilidad-20
		}
		else { return habilidad
		} }
	
	
	

	method cobra(presentacion) {
		if (presentacion.esConcurrida()){
			return 500
		}
		else return 400
	}

	
}

object luisAlberto inherits Musico (true,0,#{},#{}, segunEl) {
	
	var valorDeLaGuitarra
	
	method modificarHabilidad() {}
	
	method valorGuitarra(unaGuitarra) {
	return unaGuitarra.valor()
	}
	
	method calcularHabilidad(){
	
	return 100.min(8*valorDeLaGuitarra)
		}
	
	override method interpretaBien(unaCancion){
		return true
	}
	
	method cobra(presentacion){	
		if (presentacion.antesQueFecha(presentacion.fecha(), new Date (01,10,17))){
			return 1000
		}else{ 
			return 1200
		}
	}

}
	
	
	object fender {
	var valor=10
	var estadoRota = false
	
	method estaRota (){
		return estadoRota}
	
	method valor()
	{
	return valor
	}
	
	}

	object gibson {
	var valor=15
	var estadoRota=false
	
	method estaRota () {
	return estadoRota}
	
	method valor() {
	if (self.estaRota()){
	valor= 5
	return valor}
	else return valor}
	
	method romper (){
	estadoRota=true
	}
	

}


object kike inherits MusicoDeGrupo (true,60,#{},20, #{}, segunExpectativaInflacionaria) {

}

object soledad inherits MusicoVocalista (false,55,#{},"amor", #{}, segunPersonas) {
}
