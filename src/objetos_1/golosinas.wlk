object bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method gusto() = "chocolate"
	method libreGluten() { return false }
	method mordisco() { peso = peso * 0.8 }
}

object caramelo {
	var property peso = 5
	
	method precio() = 1
	method gusto() = frutilla
	method librGluten() = true
	method mordisco() { peso -= 1 }
}

object chupetin {
	var property peso = 7
	
	method precio() = 2
	method gusto() = naranja
	method libreGluten() = true
	method mordisco(){ 
		if (peso >= 2) { peso = peso * 0.9 }
	}
}

object oblea {
	var property peso = 250
	
	method precio() = 5
	method gusto() = vainilla
	method libreGluten() = false
	method mordisco() { 
		if (peso > 70) peso *= 0.5 
		else peso *= 0.75
	}
}

object chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2 }
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten() }	
}

object tuttifrutti {
	var peso = 5
	var property libreGluten = false
	var gusto = frutilla
	
	method peso() = peso
	
	method precio() {
		if (libreGluten) return 7
		else return 10
	}
	
	method libreGluten() = libreGluten
	
	method gusto() = gusto
}

object frutilla{
	method siguiente() = chocolate
}

object chocolate{
	method siguiente() = naranja
}

object naranja {
	method siguiente() = frutilla
}
