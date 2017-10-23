import Musico.*
import Presentacion.*
object segunPersonas{
 method cobra(presentacion){
  return presentacion.artistas().size()*100
 }
}


object segunCapacidad{
 method cobra(presentacion,capacidad){
  if(presentacion.cantidadPersonas()>capacidad){
   return cantidadCualquiera
  } else return cantidadCualquiera-100
 }
}



object segunExpectativaInflacionaria{
 method cobra(presentacion,fecha,otraFecha,porcentajeAdicional,cobro){
 if (fecha<otraFecha) {
  return precio + precio*porcentajeAdicional/100
 }
 
 else{
 return cobro
 }
}
