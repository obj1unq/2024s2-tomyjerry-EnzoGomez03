object tom {
	
	//Completar! Pueden aparecer variables y métodos nuevos!
	
	var energiaActual = 50
	

	method comer(raton) {
		energiaActual = energiaActual + 12 + raton.peso()
	}
	
	method correr(distancia){
		energiaActual = energiaActual - distancia / 2 
	}
	
	method velocidadMaxima()  {
		return 5 + energiaActual / 10
	}
	
	method energiaActualDeTom() {
	  return energiaActual
	}

	/*method puedeComerARaton(distanciaDeRaton,raton){
		return self.puedeRecorrerDistanciaDeRaton(distanciaDeRaton) and  self.puedeComerARaton(distanciaDeRaton,raton)
	}*/

	method energiaParaRecorrer(distancia){
		return distancia / 2
	}
	
	method puedeRecorrerDistanciaDeRaton(distanciaDeRaton){
		return energiaActual - self.energiaParaRecorrer(distanciaDeRaton) > 0
	}
	
	method puedeComerARaton(distancia,ratonAComer){
		return self.energiaParaRecorrer(distancia) < 12 + ratonAComer.peso()
	}
}

object jerry {
	var edadActual =  2
	method peso(){
		return edadActual * 20
	}

	method cumplir (){
		edadActual = edadActual + 1 
	}

	method distanciaActual(){
		return 120
	}

	
}

object nibbles {
	method peso(){
		return 35
	}
}


