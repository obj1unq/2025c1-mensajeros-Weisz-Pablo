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
	var vehiculo = bicicleta
	
	method vehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}
	
	method puedeLlamar() = false
	
	method pesoCuerpo(_pesoCuerpo) {
		pesoCuerpo = _pesoCuerpo
	}
	
	method peso() = vehiculo.peso() + pesoCuerpo
}

object bicicleta {
	method peso() = 10
}

object camion {
	var cantidadDeAcoplados = 0
	
	method cantidadDeAcoplados(_cantidadDeAcoplados) {
		cantidadDeAcoplados = _cantidadDeAcoplados
	}
	
	method peso() = 500 + (cantidadDeAcoplados * 500)
}

object paquete {
	var estaPago = false
	
	method estaPago(_estaPago) {
		estaPago = _estaPago
	}
	
	method estaPago() = estaPago
	
	method puedeSerEntregado(
		destino,
		mensajero
	) = self.estaPago() && destino.puedeSerEntregado(mensajero)
}

object brooklyn {
	method puedeSerEntregado(mensajero) = mensajero.peso() <= 1000
}

object matrix {
	method puedeSerEntregado(mensajero) = mensajero.puedeLlamar()
}