object paquete {
	var estaPago = false
	
	method paquetePago(_paquetePago) {
		estaPago = _paquetePago
	}
	
	method estaPago() = estaPago
}

object chuckNorris {
	method puedeLlamar() = true
	
	method peso() = 900
}

object neo {
	var tieneCredito = false
	
	method tieneCredito(_tieneCredito) {
		tieneCredito = _tieneCredito
	}
	
	method puedeLlamar() = tieneCredito
	
	method peso() = 0
}

object lincolnHawk {
	var pesoCuerpo = 0
	var pesoVehiculo = 0
			
	method puedeLlamar() = false
	
	method pesoCuerpo(_pesoCuerpo){
		pesoCuerpo = _pesoCuerpo
	}

	method pesoVehiculo(transporte) {
	    pesoVehiculo = transporte.peso()	
	}

	method peso() = pesoVehiculo + pesoCuerpo
	 
}

object bicicleta{
	method peso() = 10
}

object camion{
	var cantidadDeAcoplados = 0

	method cantidadDeAcoplados(_cantidadDeAcoplados) {
	cantidadDeAcoplados = _cantidadDeAcoplados
	}
	method peso() = 500 + (cantidadDeAcoplados * 500)
}

object brooklyn {
	method aceptaMensajero(mensajero) = mensajero.peso() <= 1000
	method puedeEntregar(mensajero) = self.aceptaMensajero(mensajero) && paquete.estaPago()
}

object matrix {
	method aceptaMensajero(mensajero) = mensajero.puedeLlamar()
	method puedeEntregar(mensajero) = self.aceptaMensajero(mensajero) && paquete.estaPago()
}