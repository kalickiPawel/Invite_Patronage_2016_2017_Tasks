import Foundation
import Swift
import UIKit

class Zwierz: CustomStringConvertible
{
    
    //Pola
    
    var imie: String
    var zdjecie: UIImage?
    var wiek: Int
    var gatunek: Gatunek
    
    //Metoda do inicjalizacji
    
    init(imie:String, gatunek: Gatunek, zdjecie: UIImage?, wiek: Int)
    {
        self.imie = imie
        self.gatunek = gatunek
        self.zdjecie = zdjecie
        self.wiek = wiek
    }
    
    //Metoda description
    
    var description: String
    {
        let opis = "\(gatunek.rawValue) - \(imie) - \(wiek) - "
        if(zdjecie != nil)
        {
            return opis + "Posiada zdjęcie"
        }
        else
        {
            return opis + "Nie posiada zdjęcia"
        }
    }
}

//Typ wyliczeniowy ogranicza ilość wartości

enum Gatunek: String
{
    case kot = "Kot"
    case pies = "Pies"
}

//sprawdzam dzialanie programu

let pies = Zwierz(imie: "Bolek", gatunek: .pies, zdjecie: nil, wiek: 10)
let kot = Zwierz(imie: "Fenek", gatunek: .kot, zdjecie: nil, wiek: 6)

pies.description
kot.description

print(pies)
print(kot)
