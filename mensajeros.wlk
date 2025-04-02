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

object Neo {
	var creditoParaLlamar = false
	
	method tieneCredito(_tieneCredito) {
		creditoParaLlamar = _tieneCredito
	}
	
	method puedeLlamar() = creditoParaLlamar
	
	method pesoDelMensajero() = 0 + paquete.pesoDelPaquete()
}

object lincolnHawk {
	var pesoPropio = 0 + paquete.pesoDelPaquete()
	var vehiculo = "bicicleta"
	var cantidadDeAcoplados = 0
	
	method puedeLlamar() = false
	
	method pesoDeHawk(_pesoDeHawk) {
		pesoPropio = 0 + paquete.pesoDelPaquete()
		pesoPropio = _pesoDeHawk
	}
	
	method vehiculousado(_vehiculoUsado) {
		vehiculo = _vehiculoUsado
	}
	
	method agregarAcoplado(_agregarAcoplado) {
		cantidadDeAcoplados = 0
		cantidadDeAcoplados = _agregarAcoplado
	}
	
	method transporteElegido() {
		if (vehiculo == "bicicleta") {
			pesoPropio += 10
		} else {
			if (vehiculo == "camion") {
				pesoPropio += 500 + (cantidadDeAcoplados * 500)
			}
		}
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