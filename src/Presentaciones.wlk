import artistas.*

class Presentacion {
	
	var capacidad
	var fecha = new Date()
	var artistas = #{}
	
	
	constructor(laCapacidad, laFecha, losArtistas){
		capacidad = laCapacidad
		fecha  = laFecha
		artistas = losArtistas
	}

	method esLugarConcurrido(){
		return capacidad > 5000
	}
	
	method tomarElEscenario(unArtista)
	{
		artistas.clear()
		artistas = #{unArtista}
	}
	
	method antesQueFecha(otraFecha,unaFecha){
	return otraFecha<=unaFecha
	}
	
	
	
	method hayUnoSolo()
	 {
		return artistas.size () == 1
     }
     
     
     method costoPresentacion () {
     return artistas.sum({unArtista=> unArtista.cobra(self)})
     
     }
}
