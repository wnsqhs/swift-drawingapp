//
//  Plane.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

struct Plane {
    private(set) var newRectangleArray: [Rectangle]
    
    init() {
        self.newRectangleArray = [Rectangle]()
    }
    
    var rectangleCount: Int {
        newRectangleArray.count
    }
    
    subscript(index: Int) -> Rectangle? {
        if index >= newRectangleArray.count {
            return nil
        }
        return newRectangleArray[index]
    }
    
    mutating func add(rectangle: Rectangle) {
        self.newRectangleArray.append(rectangle)
    }
    
    func IncludedRectangleInCoordinate(coordinate: CGPoint) -> Bool {
        for index in 0..<newRectangleArray.count {
            let selectedRectangle = newRectangleArray[index]
            let xRange = selectedRectangle.point.positionX
            let yRange = selectedRectangle.point.positionY
            
            if xRange <= coordinate.x && xRange + 150.0 >= coordinate.x &&  yRange <= coordinate.y && yRange + 120.0 >= coordinate.y {
                return true
            }
        }
        return false
    }
}
