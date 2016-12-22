import Foundation
import Swift
import UIKit

class Zwierz: CustomStringConvertible
{
    //Pola
    var nazwa: String
    var gatunek: String
    var zdjecie: UIImage?
    var wiek: Int
    
    //Metoda do inicjalizacji
    init(nazwa:String, gatunek:String, zdjecie: UIImage, wiek: Int)
    {
        self.nazwa = nazwa
        self.gatunek = gatunek
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