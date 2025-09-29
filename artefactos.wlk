import wollok.game.*

object espadaDelDestino {
  method poder(personaje) = if (personaje.batallas() <= 1) personaje.poderBase()  
  else personaje.poderBase()/2 
}

object libroDeHechizos {
  const poder = 0
    method poder(personaje) = poder
}

object collarDivino {
  const poder = 3
  method poder(personaje) = if (personaje.poderBase() > 6 ) poder+personaje.batallas()  
  else poder 
}

object armaduraDeAceroValyrion {
  const poder = 6
  method poder(personaje) = poder
}