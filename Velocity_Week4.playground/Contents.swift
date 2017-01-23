//: Playground - noun: Un velocímetro de un automóvil digital

//Johana Marcela López Parra

import UIKit

enum Velocidades : Int {

    case Apagado = 0 //0 Km
    case VelocidadBaja = 20//20 Km
    case VelocidadMedia = 50//50 Km
    case VelocidadAlta = 120//120 Km
    
    init(velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
    
}

class Auto {
    
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String) {
        
        var leyenda = ""
        
        switch self.velocidad {

        case .Apagado:
            self.velocidad = .VelocidadBaja
            leyenda = "Velocidad Baja"
        case .VelocidadBaja, .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Media"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyenda = "Velocidad Alta"
        }
        
        return (self.velocidad.rawValue, leyenda)
    }
    
}

var auto = Auto()
print("\(auto.velocidad.rawValue), \(auto.velocidad)")

for i in 1...20 {
    var result = auto.cambioDeVelocidad()
    print("\(result.actual),  \(result.velocidadEnCadena)")
}
