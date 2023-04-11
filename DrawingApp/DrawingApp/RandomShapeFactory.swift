//
//  RandomShapeFactory.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

class RandomShapeFactory: AbstractShapeFactory {
    private let CommonConstituent: CommonConstituent
    
    init(CommonConstituent: CommonConstituent) {
        self.CommonConstituent = CommonConstituent
    }
    
    func createRectangle() -> Rectangle {
        let id = RandomShapeFactory.createID()
        let size = RandomShapeFactory.createSize()
        let point = CommonConstituent.createRandomPoint(width: ScreenSize.screenWidth, height: ScreenSize.screenHeight)
        let color = CommonConstituent.createRandomColor()
        let alpha = CommonConstituent.createRandomAlpha()
        return Rectangle(id: id, size: size, point: point, color: color, alpha: alpha)
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
