//
//  main.swift
//  Task_3
//
//  Created by Paweł Kalicki on 20/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import Foundation

print("Wprowadź długości pudełka. Rozmiary są w formie „wysokość x szerokość x długość”, a poszczególne pudełka są rozdzielone spacjami, np. „2x3x4 1x2x3 2x2x2”")
    
let wprowadzanyText: String? = readLine(strippingNewline: true)
let pudelko = wprowadzanyText?.components(separatedBy: " ")
var sumaPol: Float = 0

for i in pudelko!{
    var wymiaryPudelka = i.components(separatedBy: "x")
        
    let wysokosc: Float = Float(wymiaryPudelka[0])!
    let szerokosc: Float = Float(wymiaryPudelka[1])!
    let dlugosc: Float = Float(wymiaryPudelka[2])!
    
    let poleBezOwijania: Float = 2*wysokosc*szerokosc+2*wysokosc*dlugosc+2*szerokosc*dlugosc
    var namniejszePole: Float
    
    if(wysokosc*szerokosc < wysokosc*dlugosc || wysokosc*szerokosc < szerokosc*dlugosc)
    {
        namniejszePole = wysokosc*szerokosc
    }
    else if(wysokosc*dlugosc < wysokosc*szerokosc || wysokosc*dlugosc < szerokosc*dlugosc)
    {
        namniejszePole = wysokosc*dlugosc
    }
    else
    {
        namniejszePole = szerokosc*dlugosc
    }
    let polePudelka: Float = poleBezOwijania+namniejszePole
    sumaPol += polePudelka
}

func liczDlugoscSznurka()
{
    
}

print("Suma pól jest rowna: "+String(sumaPol))
