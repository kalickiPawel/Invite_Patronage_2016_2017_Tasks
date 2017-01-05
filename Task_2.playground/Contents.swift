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
    var waga: Float
    
    //Metoda do inicjalizacji
    
    init(imie:String, gatunek: Gatunek, zdjecie: UIImage?, wiek: Int, waga: Float)
    {
        self.imie = imie
        self.gatunek = gatunek
        self.zdjecie = zdjecie
        self.wiek = wiek
        self.waga = waga
    }
    
    //Metoda description
    
    var description: String
    {
        let opis = "\(gatunek.rawValue) - \(imie) - \(wiek) - \(waga) - "
        if(zdjecie != nil)
        {
            return opis + "Posiada zdjęcie"
        }
        else
        {
            return opis + "Nie posiada zdjęcia"
        }
    }
    
    //Computed variable
    
    var czyPosiada : Bool
    {
        get{ return zdjecie != nil ? true:false}
    }
    
}//koniec klasy

//Extension

extension Float
{
    func convertToKg() -> Float
    {
        return self * 0.45359237
    }
}

//Typ wyliczeniowy ogranicza ilość wartości

enum Gatunek: String
{
    case kot = "Kot"
    case pies = "Pies"
}

let waga_funty: Float = 200
let waga_kilogramy = waga_funty.convertToKg()
