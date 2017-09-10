class Presentaciones {
	
	var capacidad
	var fecha
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
		
	}
	method cantaEngrupo (artistas) {
	 if(artistas.size()>1)
	   {
	   	artistas.forEach(modificarHabilidad())
	   }
	}

}
