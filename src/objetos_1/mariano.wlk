import golosinas.*

object mariano {
	var golosinas = #{}
	
	method comprar(golosina) { golosinas.add(golosina)}
	method desechar(golosina) { golosinas.remove(golosina)}
	method golosinas() = golosinas
	
	method probarGolosinas() { golosinas.forEach{golosina => golosina.mordisco()}}
	
	method hayGolosinaSinTACC(){  }
}

