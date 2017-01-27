//
//  main.swift
//  Task_3
//
//  Created by Paweł Kalicki on 20/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import Foundation

func calcLengthString(x: Float, y: Float, z: Float) -> Float {
    
    var minCircuit: Float = 0
    
    if(2*x+2*y < 2*x+2*z || 2*x+2*y < 2*y+2*z)
    {
        minCircuit = 2*x+2*y
    }
    else if(2*x+2*z < 2*x+2*y || 2*x+2*z < 2*y+2*z)
    {
        minCircuit = 2*x+2*z
    }
    else
    {
        minCircuit = 2*y+2*z
    }
    
    let tie: Float = minCircuit
    let knot: Float = x*y*z
    let cord: Float = tie + knot
    
    return cord
}

print("Wprowadź długości pudełka. Rozmiary są w formie „wysokość x szerokość x długość”, a poszczególne pudełka są rozdzielone spacjami, np. „2x3x4 1x2x3 2x2x2”: ")
    
let text: String? = readLine(strippingNewline: true)
let box = text?.components(separatedBy: " ")

var minArea: Float
var areasSum: Float = 0
var lengthString: Float = 0
var cordsSum: Float = 0

for i in box!{
    
    var boxDimensions = i.components(separatedBy: "x")
        
    let x: Float = Float(boxDimensions[0])!
    let y: Float = Float(boxDimensions[1])!
    let z: Float = Float(boxDimensions[2])!
    
    let withoutWrap: Float = 2*x*y+2*x*z+2*y*z
    
    if(x*y < x*z || x*y < y*z)
    {
        minArea = x*y
    }
    else if(x*z < x*y || x*z < y*z)
    {
        minArea = x*z
    }
    else
    {
        minArea = y*z
    }
    
    let boxArea: Float = withoutWrap+minArea
    
    areasSum += boxArea
    
    lengthString = calcLengthString(x: x, y: y, z: z)
    
    cordsSum += lengthString
}
print("Suma pól jest równa: "+String(areasSum))
print("Suma długości sznurka jest równa: "+String(cordsSum))
