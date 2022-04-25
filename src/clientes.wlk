

object ludmila {	
	method precioPorKm()=18	
}

object anaMaria {
	var estaEconomicamenteEstable=true
	
	method estaEconomicamenteEstable()= estaEconomicamenteEstable
		
	method precioPorKm(){
		return if (estaEconomicamenteEstable){30} else{25}		
	}
}

object teresa {	
	 var precioPorKm = 22 
	  
	method precioPorKm(){
		return precioPorKm	
	}
	
	method nuevoPrecioPorKm(nuevoPrecio){
		precioPorKm = nuevoPrecio
	}
}

object melina{
	var trabajaPara
	
	method trabajaPara(cliente){
		trabajaPara=cliente
	}
	
	method precioPorKm(){
		return (trabajaPara.precioPorKm())-3	
	}	
}





