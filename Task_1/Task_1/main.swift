//
//  main.swift
//  Task_1
//
//  Created by Paweł Kalicki on 15/12/2016.
//  Copyright © 2016 Paweł Kalicki. All rights reserved.
//

import Foundation

class Zwierz
{
    //Pola
    var Nazwa: String
    var Gatunek: String
    var Zdjecie: String
    var Wiek: Int
    
    //Metoda description
    
    func description()
    {
        print("\(Gatunek) - \(Nazwa) ma: \(Wiek) lat oraz \(Zdjecie)")
    }
    
    //Metoda do inicjalizacji
    init(nazwa:String, gatunek:String, zdjecie: String, wiek: Int)
    {
        Nazwa = nazwa
        Gatunek = gatunek
        Zdjecie = zdjecie
        Wiek = wiek
    }

}

let dog = Zwierz(nazwa: "Azor", gatunek: "Pies", zdjecie: "nie posiada zdjecia", wiek: 6)
let cat = Zwierz(nazwa: "Fenek", gatunek: "Kot", zdjecie: "posiada zdjecie", wiek: 10)

dog.description()
cat.description()
