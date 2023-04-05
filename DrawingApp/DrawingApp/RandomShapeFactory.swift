//
//  RandomShapeFactory.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

class RandomShapeFactory: ShapeMethod {
    func createRectangle() -> Rectangle {
        let id = RandomShapeFactory.createID()
        let size = RandomShapeFactory.createSize()
        let point = RandomShapeFactory.createPoint(width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
        let color = RandomShapeFactory.createColor()
        let alpha = RandomShapeFactory.createAlpha()
        return Rectangle(id: id, size: size, point: point, color: color, alpha: alpha)
    }
    
    static func createAlpha() -> Alpha {
        if let randomAlpha = Alpha.allCases.randomElement() {
            return randomAlpha
        }
        return Alpha.one
    }
    
    static func createColor() -> Color {
        let r = Int.random(in: 0...255)
        let b = Int.random(in: 0...255)
        let g = Int.random(in: 0...255)
        return Color(red: r, green: g, blue: b)
    }
    
    static func createPoint(width: CGFloat, height: CGFloat) -> Point {
        let randomPositionX = Double.random(in: 0...width)
        let randomPositionY = Double.random(in: 0...height)
        return Point(positionX: randomPositionX, positionY: randomPositionY)
    }
    
    static func createID() -> ID {
        var rectangleId: String
        let randomId = UUID().uuidString.suffix(9)
        var id = randomId.map { String($0) }
        id.insert("-", at: 3)
        id.insert("-", at: 7)
        rectangleId = id.joined()
        return ID(id: rectangleId)
    }
    
    static func createSize() -> Size {
        return Size(width: 150, height: 120)
    }
}
