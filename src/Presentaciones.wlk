class Presentaciones {
	
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
	
	method hastaSeptiembre(laFecha){
	
	return ((laFecha.mes = 09)and(laFecha.anio =2017))
		
	}
	
	
	method hayUnoSolo(artistas)
	 {
		return artistas.size () = 1
     }
}
