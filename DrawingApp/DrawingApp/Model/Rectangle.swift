//
//  Rectangle.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/03.
//

import Foundation

class Rectangle: CustomStringConvertible  {
    var description: String {
        return "\(id), \(size), \(point), \(color), \(alpha)"
    }
    
    var id: ID
    var size: Size
    var point: Point
    var color: Color
    var alpha: Alpha
    
    init(id: ID, size: Size, point: Point, color: Color, alpha: Alpha) {
        self.id = id
        self.size = size
        self.point = point
        self.color = color
        self.alpha = alpha
    }
}
