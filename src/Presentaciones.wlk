class Presentacion {
	
	var capacidad
	var fecha = new Date (dia,mes,anio)
	var artistas = #{}
	
	
	constructor(laCapacidad, laFecha, losArtistas){
		capacidad = laCapacidad
		fecha  = laFecha
		artistas = losArtistas
	}

	method esLugarConcurrido(){
		return capacidad > 5000
	}
	
	
	
	method fechaAntesQuePresentacion(unaFecha){
	return unaFecha<=fecha
	}
	
	
	
	method hayUnoSolo()
	 {
		return artistas.size () == 1
     }
     
     
     method costoPresentacion () {
     return artistas.sum({unArtista=> unArtista.cobra(self)})
     
     }
}
