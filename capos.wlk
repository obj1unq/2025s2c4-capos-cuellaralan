import wollok.game.*


object rolando {
  var property poderBase = 50 
  var property batallas = 0
  const artefactos = []
  var property capacidadDeArtefactos = 2

    method artefactos() = artefactos 
    method todosLosArtefactos() {
      return castilloDePiedra.artefactosGuardados() + artefactos
    }
    method recoger(artefacto) {
        if (!self.validarSiPuedeRecoger()) {
          self.error("No puede recoger más artefactos")
        }
        artefactos.add(artefacto)
    }

    method poseeArtefacto(artefacto) {
        return artefactos.contains(artefacto)
    }

    method validarSiPuedeRecoger() {
      return artefactos.size() < capacidadDeArtefactos
    }

    method liberarEspacio() {
      artefactos.clear()
    }

    method ingresoAlCastillo() {
      castilloDePiedra.guardarArtefactos(artefactos)
      self.liberarEspacio()
    }
    
    method poderDePelea() = poderBase + self.poderDeArtefactos() 

    method poderDeArtefactos() {
      var poderAdquirido = 0
      artefactos.forEach({ a => poderAdquirido +=  a.poder(self) })
      return poderAdquirido
    }
}

object castilloDePiedra {
  const artefactosGuardados = []

    // method agregar(artefacto) {
    //     artefactos.add(artefacto)
    // }

    // method tiene(artefacto) {
    //     return artefactos.contains(artefacto)
    // }
    method tieneGuardado(artefacto) {
        return artefactosGuardados.contains(artefacto)
    }
    method artefactosGuardados() = artefactosGuardados
    method guardarArtefactos(artefactosDeRolando) {
      artefactosGuardados.addAll(artefactosDeRolando)
    }

}