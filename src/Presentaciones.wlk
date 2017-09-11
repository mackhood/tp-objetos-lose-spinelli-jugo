class Presentacion {
	
	var capacidad
	var fecha = new Date (dia,mes,anio)
	var artistas = #{}
	var costo
	
	constructor(laCapacidad, laFecha, losArtistas){
		capacidad = laCapacidad
		fecha  = laFecha
		artistas = losArtistas
	}

	method esLugarConcurrido(){
		return capacidad > 5000
	}
	
	method hastaSeptiembre(){
	
	return ((laFecha.mes == 09)and(laFecha.anio == 2017))
		
	}
	
	
	method hayUnoSolo()
	 {
		return artistas.size () == 1
     }
     
     
     method costoPresentacion () {
     return artistas.fold(costo,{unArtista=> unArtista.cobra(self)})
     
     }
}
