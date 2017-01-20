//
//  main.swift
//  Task_3
//
//  Created by Paweł Kalicki on 20/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import Foundation

func liczDlugoscSznurka(wysokosc: Float, szerokosc: Float, dlugosc: Float) -> Float {
    var najmniejszyObwod: Float = 0
    
    if(2*wysokosc+2*szerokosc < 2*wysokosc+2*dlugosc || 2*wysokosc+2*szerokosc < 2*szerokosc+2*dlugosc)
    {
        najmniejszyObwod = 2*wysokosc+2*szerokosc
    }
    else if(2*wysokosc+2*dlugosc < 2*wysokosc+2*szerokosc || 2*wysokosc+2*dlugosc < 2*szerokosc+2*dlugosc)
    {
        najmniejszyObwod = 2*wysokosc+2*dlugosc
    }
    else
    {
        najmniejszyObwod = 2*szerokosc+2*dlugosc
    }
    
    let obwiazanie: Float = najmniejszyObwod
    let wezel: Float = wysokosc*szerokosc*dlugosc
    let sznurek: Float = obwiazanie + wezel
    
    return sznurek
}

print("Wprowadź długości pudełka. Rozmiary są w formie „wysokość x szerokość x długość”, a poszczególne pudełka są rozdzielone spacjami, np. „2x3x4 1x2x3 2x2x2”: ")
    
let wprowadzanyText: String? = readLine(strippingNewline: true)
let pudelko = wprowadzanyText?.components(separatedBy: " ")

var sumaPol: Float = 0
var dlugoscSznurka: Float = 0
var sumaSznurka: Float = 0
var namniejszePole: Float

for i in pudelko!{
    var wymiaryPudelka = i.components(separatedBy: "x")
        
    let wysokosc: Float = Float(wymiaryPudelka[0])!
    let szerokosc: Float = Float(wymiaryPudelka[1])!
    let dlugosc: Float = Float(wymiaryPudelka[2])!
    
    let poleBezOwijania: Float = 2*wysokosc*szerokosc+2*wysokosc*dlugosc+2*szerokosc*dlugosc
    
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
    
    dlugoscSznurka = liczDlugoscSznurka(wysokosc: wysokosc, szerokosc: szerokosc, dlugosc: dlugosc)
    
    sumaSznurka += dlugoscSznurka
}

print("Suma pól jest równa: "+String(sumaPol))
print("Suma długości sznurka jest równa: "+String(sumaSznurka))
