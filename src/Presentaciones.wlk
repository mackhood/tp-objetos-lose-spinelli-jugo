import artistas.*
import Cancion.*
import claseEstadio.*

class Presentacion {
	
	var capacidad
	var fecha = new Date()
	var artistas = #{}
	var estadio
	
	
	constructor(unEstadio, laFecha, losArtistas){
		estadio= unEstadio
		capacidad = unEstadio.capacidad()
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
     method capacidad() {
     return capacidad
     }
     
}

 const fechaLuna = new Date( 20,04,17)   {}
  
  const fechaTrastienda = new Date (15,11,17)
  object presentandoEnLuna inherits Presentacion (lunaPark, fechaLuna,#{luisAlberto,joaquin,lucia} )   {}
  
  const fechapDePalooza = new Date (15,12,17)
  
  object pDePaloozaEnLuna inherits Presentacion (lunaPark, fechapDePalooza, #{})
  {
    method agregarMusico (unMusico)
    {
       if (puedeAgregar(unMusico))
       {
          artistas.add(unMusico)
       }
       else
       {
          return 
       }
    }
    
    method puedeAgregar (unMusico)
    {
        return (tieneLaHabilidad(unMusico) and tieneCancionesPropias(unMusico)) and puedeInterpretarAlicia(unMusico)
    }
    
    method tieneCancionesPropias(unMusico)
    {
        return unMusico.cancionesPropias.size() >= 1
    }
    
    method tieneLaHabilidad(unMusico)
    {
        return unMusico.habilidad > 70
    }
    method puedeInterpretarAlicia(unMusico)
    {
        return unMusico.interpretaBien(aliciaEnElPaís)
    }
    
  }
  
  object presentandoEnTrastienda inherits Presentacion  (laTrastienda, fechaTrastienda , #{luisAlberto,joaquin,lucia} ) {}
  