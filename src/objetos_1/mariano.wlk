import golosinas.*

object mariano {
	var golosinas = #{}
	
	method comprar(golosina) { golosinas.add(golosina)}
	method desechar(golosina) { golosinas.remove(golosina)}
	method golosinas() = golosinas
	
	method probarGolosinas() { golosinas.forEach{golosina => golosina.mordisco()}}
	
	method hayGolosinaSinTACC() { return golosinas.any{golosina => golosina.libreGluten()} }
	
	method preciosCuidados() { return golosinas.all{golosina => golosina.precio() <= 10} }
	
	method golosinaDeSabor(unSabor) { return golosinas.find{golosina => golosinas.gusto() == unSabor} }
	
	method golosinasDeSabor(unSabor) { return golosinas.filter{golosina => golosinas.gusto() == unSabor} }
	
	method sabores() { return golosinas.map{golosina => golosinas.gusto()}.asSet() }
	
	method golosinaMasCara() { return golosinas.max{golosina => golosina.precio()} }
	
	method pesoGolosinas() { return golosinas.sum{golosina => golosina.peso()} }
}

