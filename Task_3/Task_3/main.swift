//
//  main.swift
//  Task_3
//
//  Created by Paweł Kalicki on 20/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import Foundation

func calcLengthString(dimensions: Dimension) -> Float {
    
    let minCircuit: Float = [2*dimensions.width + 2*dimensions.height, 2*dimensions.width + 2*dimensions.depth, 2*dimensions.height + 2*dimensions.depth].min() ?? 0

    let knot: Float = dimensions.width*dimensions.height*dimensions.depth
    let cord: Float = minCircuit + knot
    
    return cord
}

func calcMinArea(dimensions: Dimension) -> Float {
    
    let walls = [dimensions.width*dimensions.height,dimensions.width*dimensions.depth,dimensions.height*dimensions.depth]
    
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
    
    areasSum += calcMinArea(dimensions: dimensions)
    cordsSum += calcLengthString(dimensions: dimensions)
}

print("Suma pól jest równa: "+String(areasSum))
print("Suma długości sznurka jest równa: "+String(cordsSum))
