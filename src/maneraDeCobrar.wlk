import claseMusico.*
import Presentaciones.*

object segunPersonas{
 method cobra(presentacion){
  return presentacion.artistas().size()*100
 }
}


object segunCapacidad{
 method cobra(presentacion,capacidad, cantidadCualquiera){
  if(presentacion.cantidadPersonas()>capacidad){
   return cantidadCualquiera
  } else return cantidadCualquiera-100
 }
}



object segunExpectativaInflacionaria{
 method cobra(presentacion,fecha,otraFecha,porcentajeAdicional,cobro, precio){
 if (fecha<otraFecha) {
  return precio + precio*porcentajeAdicional/100
 }
 
 else{
 return cobro
 }
}
}

object segunEl{
	
}

