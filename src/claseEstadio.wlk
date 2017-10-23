class Estadio {

var nombre
var capacidad

constructor (unNombre, unaCapacidad) { 
nombre = unNombre
capacidad = unaCapacidad
}

method capacidad() {

return capacidad }
}

  object lunaPark inherits Estadio ("Luna Park", 9260) {}
  
  object laTrastienda inherits Estadio ("La Trastienda", 700)
  {
     override method capacidad(unaPresentación)
     {
      	if ( unaPresentación.fechaDePresentación().dayOfweek == 6){
         	return 700
      	}
      	else {
         	return 300
     	}  
     }
  }
