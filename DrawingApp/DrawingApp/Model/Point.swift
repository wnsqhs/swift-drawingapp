//
//  Point.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/03.
//

import Foundation

class Point: CustomStringConvertible {
    private(set) var positionX: Double
    private(set) var positionY: Double
    
    init(positionX: Double, positionY: Double) {
        self.positionX = positionX
        self.positionY = positionY
    }
    
    var description: String {
        return "X: \(positionX), Y: \(positionY)"
    }
}
