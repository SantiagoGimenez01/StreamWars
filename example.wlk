class Stream{
  const invitados

  method cantViewers()
  method hype() = invitados.sum({invitado => invitado.popularidad().min(100)})
  method laEstaPegando() = self.hype() > 60
  method cuantoGana() = self.cantViewers() * self.hype()
}

class SonieQueVolaba inherits Stream{
  const canciones
  const costoDeProduccion

  override method cantViewers() = canciones * 10000
  override method cuantoGana() = super() - costoDeProduccion
}

class HayAlgoAhi inherits Stream{
  const sucesos
  const costoDeProduccion

  override method cantViewers() = if (sucesos > 10) 20000 else 10000
  override method cuantoGana() = super() - costoDeProduccion
  override method hype() = 100
}

class StreamerIndependiente inherits Stream{
  var suscriptores
  const factor

  override method cantViewers() = suscriptores * factor

  method frenesiDeSuscriptores(){
    suscriptores *= 2
  }

  override method cuantoGana() = super() * 0.9
}

object maniana{
  method personasConectadas() = 1000
}

object tarde{
  method personasConectadas() = 5000
}

object noche{
  method personasConectadas() = 10000
}

class Coscu inherits StreamerIndependiente{
  var property momentoDelDia = maniana

  override method cantViewers() = super() + momentoDelDia.personasConectadas()
}

class Invitados{
  var seguidoresInstagram
  const mascotas

  method popularidad() = seguidoresInstagram/2

  method jugarConMascota(){
    if(mascotas > 0){
      seguidoresInstagram *= mascotas
    }
  }


}