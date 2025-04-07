import objetos.*
import personas.*

object bolichito {
  var objetoDelMostrador = pelota
  var objetoDeLaVidriera = remera

  method setObjetoDelMostrador(unObjeto) {
    objetoDelMostrador = unObjeto
  }
  method setObjetoDeLaVidriera(unObjeto) {
    objetoDeLaVidriera = unObjeto
  }
  method esBrillante() {
    return objetoDelMostrador.material().esBrillante() && 
           objetoDeLaVidriera.material().esBrillante()
  }
  method esMonocromatico() {
    return objetoDeLaVidriera.color() == objetoDelMostrador.color()
  }
  method estaEquilibrado() {
    return objetoDelMostrador.peso() > objetoDeLaVidriera.peso()
  }
  method tieneObjetoDeColor(unColor) {
    return objetoDeLaVidriera.color() == unColor ||
           objetoDelMostrador.color() == unColor
  }
  method sePuedeMejorar() {
    return !self.estaEquilibrado() || self.esMonocromatico()
  }
  method puedoOfrecerleAlgo( unaPersona) {
    return unaPersona.leGusta(objetoDeLaVidriera) ||
           unaPersona.leGusta(objetoDelMostrador)
  }
}