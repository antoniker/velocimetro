//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velocidadinicial : Velocidades){
        
        self = velocidadinicial
    
    }
    
}



class Auto {
    
    var velocidad : Velocidades
    
    init(){
        velocidad = (velocidadinicial : .Apagado)
    }
    
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String) {
        
         var mensaje : String = ""
        let vel = velocidad.rawValue
       
      
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            mensaje = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            mensaje = "Velocidad media"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            mensaje = "Velocidad alta"
      
        }
        
        return (vel, mensaje)
    }

}

let coche = Auto()
for i in 1...20
{
    let resultado = coche.cambioDeVelocidad()
    
    print("\(i). \(resultado.actual), \(resultado.velocidadEnCadena)")
    
}


