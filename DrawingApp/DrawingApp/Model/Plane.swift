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
}
