class Banda {
var nombre
var artistas
var discos = #{}
var representante
var habilidad 

constructor(unNombre,unosArtistas,unosDiscos,unosRepresentantes,unaHabilidad){
nombre =unNombre
artistas=unosArtistas
discos=unosDiscos
representante=unosRepresentantes
habilidad=unaHabilidad }

//method obtenerHabilidad () {


//no funciona => habilidad=(artistas.map({artista =>artista.habilidad()}).fold(0,({acum,habilidad =>habilidad+acum}) )*1,1
//}

method habilidad(){return habilidad }

method cobra() 
{
return artistas.map({artista =>artista.cobra()}).fold(0,({acum,cobro =>cobro+acum} + representante.cobra()
))}

method puedeTocar (unaCancion) 
	{
return artistas.all({artista => artista.interpretaBien(unaCancion)})
	}
	}
