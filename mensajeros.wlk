object paquete {
	var estaPago = false
	var peso = 0
	
	method pesoPaquete(_pesoPaquete) {
		peso = 0
		peso = _pesoPaquete
	}
	
	method paquetePago(_paquetePago) {
		estaPago = false
		estaPago = _paquetePago
	}
	
	method paqueteEstaPago() = estaPago
	
	method pesoDelPaquete() = peso
}

object chuckNorris {
	method puedeLlamar() = true
	
	method pesoDelMensajero() = 900 + paquete.pesoDelPaquete()
}

object neo {
	var creditoParaLlamar = false
	
	method tieneCredito(_tieneCredito) {
		creditoParaLlamar = _tieneCredito
	}
	
	method puedeLlamar() = creditoParaLlamar
	
	method pesoDelMensajero() = 0 + paquete.pesoDelPaquete()
}

object lincolnHawk {
	var pesoPropio = (0 + paquete.pesoDelPaquete()) + pesoDelTransporte
	var vehiculo = "bicicleta"
	var cantidadDeAcoplados = 0
	var pesoDelTransporte = 10
	
	method puedeLlamar() = false
	
	method vehiculousado(_vehiculoUsado) {
		vehiculo = _vehiculoUsado
	}
	
	method agregarAcoplado(_agregarAcoplado) {
		cantidadDeAcoplados = 0
		cantidadDeAcoplados = _agregarAcoplado
	}
	
	method transporteElegido() {
		pesoDelTransporte = 0
		if (vehiculo == "bicicleta") {
			pesoDelTransporte = 10
		} else {
			pesoDelTransporte = 500 + (cantidadDeAcoplados * 500)
		}
	}
	
	method pesoDeHawk(_pesoDeHawk) {
		pesoPropio = 0 + paquete.pesoDelPaquete()
		pesoPropio = (_pesoDeHawk + paquete.pesoDelPaquete()) + pesoDelTransporte
	}
	
	method pesoDelMensajero() = pesoPropio
}

object brooklyn {
	method aceptaMensajero(mensajero) = mensajero.pesoDelMensajero() <= 1000
}

object matrix {
	method aceptaMensajero(mensajero) = mensajero.puedeLlamar()
}

object mensajeria {
	method puedeEntregar(
		paquete,
		mensajero,
		destino
	) = paquete.paqueteEstaPago() && destino.aceptaMensajero(mensajero)
}