import golosinas.*

object mariano {
	var golosinas = #{}
	
	method comprar(golosina) { golosinas.add(golosina)}
	method desechar(golosina) { golosinas.remove(golosina)}
	method golosinas() = golosinas
	
	method probarGolosinas() { golosinas.forEach{golosina => golosina.mordisco()}}
	
	method hayGolosinaSinTACC() { golosinas.any{golosina => golosina.libreGluten()} }
	
//	method preciosCuidados() { golosinas.all{golosina => golosina.precio() <= 10} }
	
//	method golosinaDeSabor(unSabor) { golosinas.find{ golosinas.gusto(unSabor)} }
	
//	method golosinasDeSabor(unSabor) { golosinas.filter{return golosinas.gusto(unSabor)} }
	
//	method golosinaMasCara() { return golosinas.max({golosina => golosina.precio()}) }
	
//	method pesoGolosinas() { golosinas.sum()}
}

