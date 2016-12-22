import Foundation
import Swift
import UIKit

class Zwierz: CustomStringConvertible
{
    //Pola
    var nazwa: String
    var zdjecie: UIImage?
    var wiek: Int
    var gatunek: Gatunek
    
    //Metoda do inicjalizacji
    init(nazwa:String, gatunek:String, zdjecie: UIImage?, wiek: Int)
    {
        self.nazwa = nazwa
        self.gatunek = Gatunek(rawValue: gatunek)!
        self.zdjecie = zdjecie
        self.wiek = wiek
    }
    
    //Metoda description
    var description: String
    {
        if(zdjecie != nil)
        {
            return "(\(nazwa) -  \(gatunek) - \(wiek) - posiada zdjęcie)"
        }
        else
        {
            return "(\(nazwa) -  \(gatunek) - \(wiek) - nie posiada zdjęcia)"
        }
    }
}

//Typ wyliczeniowy ogranicza ilość wartości
enum Gatunek: String
{
    case kot = "Kot"
    case pies = "Pies"
    case królik = "Królik"
    case ryba = "Ryba"
    case chomik = "Chomik"
}

//sprawdzam dzialanie programu

var pies = Zwierz(nazwa: "Bolek", gatunek: "Pies", zdjecie: nil, wiek: 10)
var kot = Zwierz(nazwa: "Fenek", gatunek: "Kot", zdjecie: nil, wiek: 6)

pies.description()
kot.description()
