import clientes.*
import oficina.*

object roxana{
	
	method precioViaje(cliente,km)= cliente.precioPorKm()*km
}

object gabriela{
	
	method precioViaje(cliente,km){
		return (cliente.precioPorKm()*km) + ((cliente.precioPorKm()*km)*0.20)
	}
}

object mariela{
      var viajeMinimo=50
      
   method precioViaje(cliente,km){
	  return if (km>2){(cliente.precioPorKm()*km)} else{viajeMinimo}
	}	
}

object juana{
	
	method precioViaje(cliente,km){
		return if ((km)<=8){100} else{200}
	}
}

object lucia{
	var reemplazaA
	
	method reemplazaA(remisera){
	 reemplazaA = remisera
	}
	
	method precioViaje(cliente,km){
		return reemplazaA.precioViaje(cliente,km)
	}
}


