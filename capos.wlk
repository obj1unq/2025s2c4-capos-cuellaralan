import wollok.game.*


object rolando {
  const artefactos = []
  var property capacidadDeArtefactos = 2

    method artefactos() = artefactos
    method todosLosArtefactos() {
      return artefactos + castilloDePiedra.artefactosGuardados()
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

    method LiberarEspacio() {
      artefactos.clear()
    }

    method ingresoAlCastillo() {
      castilloDePiedra.guardarArtefactos(artefactos)
      self.LiberarEspacio()
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