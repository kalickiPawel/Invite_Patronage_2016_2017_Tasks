//
//  main.swift
//  Task_3
//
//  Created by Paweł Kalicki on 20/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import Foundation

func calcLengthString(x: Float, y: Float, z: Float) -> Float {
    
    let minCircuit: Float = [2*x + 2*y, 2*x + 2*z, 2*y + 2*z].min() ?? 0

    let knot: Float = x*y*z
    let cord: Float = minCircuit + knot
    
    return cord
}

func calcMinArea(x: Float, y: Float, z: Float) -> Float {
    
    let walls = [x*y,x*z,y*z]
    
    var withoutWrap: Float = 0
    
    for i in 0...walls.count-1
    {
        withoutWrap += 2*walls[i]
    }
    
    let minArea: Float = withoutWrap+(walls.min() ?? 0)
    
    return minArea
}

struct Dimension {
    var width : Float
    var height : Float
    var depth : Float
}

print("Wprowadź długości pudełka. Rozmiary są w formie „wysokość x szerokość x długość”, a poszczególne pudełka są rozdzielone spacjami, np. „2x3x4 1x2x3 2x2x2”: ")
    
let text: String? = readLine(strippingNewline: true)
let box = text?.components(separatedBy: " ")

var areasSum: Float = 0
var cordsSum: Float = 0

for i in box!{
    
    var boxDimensions = i.components(separatedBy: "x")
    
    var dimensions = Dimension(width: Float(boxDimensions[0]) ?? 0, height: Float(boxDimensions[1]) ?? 0, depth: Float(boxDimensions[2]) ?? 0)
    
    areasSum += calcMinArea(x: dimensions.width, y: dimensions.height, z: dimensions.depth)
    cordsSum += calcLengthString(x: dimensions.width, y: dimensions.height, z: dimensions.depth)
}

print("Suma pól jest równa: "+String(areasSum))
print("Suma długości sznurka jest równa: "+String(cordsSum))
