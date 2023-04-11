//
//  RandomShapeGenerator.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/12.
//

import Foundation

class RandomShapeGenerator: CommonConstituent {
    func createRandomPoint(width: CGFloat, height: CGFloat) -> Point {
        let randomPositionX = Double.random(in: 0...width)
        let randomPositionY = Double.random(in: 0...height)
        return Point(positionX: randomPositionX, positionY: randomPositionY)
    }
    
    func createRandomColor() -> Color {
        let r = Int.random(in: 0...255)
        let b = Int.random(in: 0...255)
        let g = Int.random(in: 0...255)
        return Color(red: r, green: g, blue: b)
    }
    
    func createRandomAlpha() -> Alpha {
        if let randomAlpha = Alpha.allCases.randomElement() {
            return randomAlpha
        }
        return Alpha.one
    }
}
