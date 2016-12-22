//
//  main.swift
//  Task_1
//
//  Created by Paweł Kalicki on 15/12/2016.
//  Copyright © 2016 Paweł Kalicki. All rights reserved.
//

import Foundation
import Swift
import UIKit

class Zwierz: CustomStringConvertible
{
    //Pola
    var nazwa: String
    var gatunek: String
    var zdjecie: UIImage
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
        if(zdjecie == NULL)
            return "(\(nazwa) -  \(gatunek) - \(wiek) - posiada zdjęcie)"
        else if ( zdjecie == ?)
            return "(\(nazwa) -  \(gatunek) - \(wiek) - nie posiada zdjęcia)"
        else
            return "(\(nazwa) -  \(gatunek) - \(wiek))"
    }
}
//sprawdzam dzialanie programu:

let dog = Zwierz(nazwa: "Azor", gatunek: "Pies", zdjecie: NULL, wiek: 6)
let cat = Zwierz(nazwa: "Fenek", gatunek: "Kot", zdjecie: NULL, wiek: 10)

dog.description()
cat.description()
