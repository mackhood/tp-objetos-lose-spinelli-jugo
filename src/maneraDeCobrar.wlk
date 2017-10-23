import claseMusico.*
import Presentaciones.*

class Capacidad {

var costo
var capacidad

constructor(elCosto){
	costo = elCosto
}

method costoDeUnaPresentacion(unaPresentacion){
	if(unaPresentacion.capacidad()){
		return costo
	}else{
		return costo -100
	}
}

}

class CantidadDeArtistas {

  var costo

  constructor(unCosto){
    costo = unCosto
  }

  method costoDeUnaPresentacion(unaPresentacion){
    if(unaPresentacion.hayUnoSolo()){
      return costo
    }else{
      return costo/2
    }
  }

}

class ExpectativaInflacionaria {

  var precio
  var fecha
  var porcentaje

  constructor(unPrecio,unaFecha,unPorcentaje){
    precio = unPrecio
    fecha = unaFecha
    porcentaje = unPorcentaje
  }

  method costoDeUnaPresentacion(presentacion){
    if(fecha > presentacion.fecha()){
      return precio * porcentaje
    }else{
      return precio
    }
  }

}