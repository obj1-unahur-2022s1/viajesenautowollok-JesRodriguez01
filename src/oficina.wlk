import clientes.*
import remiseras.*

object oficina {
	var primeraOpcion
	var segundaOpcion
	
	method asignarRemiseras(remisera1,remisera2){
		primeraOpcion=remisera1
		segundaOpcion=remisera2
	}
	
	method  cambiarPrimerRemiserarPor(remisera){
		primeraOpcion=remisera
	}
	
	method  cambiarSegundoRemiseraPor(remisera){
		segundaOpcion=remisera
	}
	
	method  intercambiarRemiseras(){
		self.cambiarPrimerRemiserarPor(segundaOpcion)
		self.cambiarSegundoRemiseraPor(primeraOpcion)
	}
	
    method  remiseraElegidaParaViaje(cliente, km){
    	return if ((primeraOpcion.precioViaje(cliente,km)- segundaOpcion.precioViaje(cliente,km))>30 
    		and segundaOpcion.precioViaje(cliente,km)<primeraOpcion.precioViaje(cliente,km))
    	{segundaOpcion}else{primeraOpcion}
    }
	
}
