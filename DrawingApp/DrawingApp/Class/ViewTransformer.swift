//
//  ViewTransformer.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/12.
//

import Foundation

class ViewTransformer: Transformer {
    let transformRectangle: Rectangle
    
    init(transformRectangle: Rectangle) {
        self.transformRectangle = transformRectangle
    }
    
    func transformColor() -> [CGFloat] {
        let r = CGFloat(transformRectangle.color.red) / 255
        let g = CGFloat(transformRectangle.color.green) / 255
        let b = CGFloat(transformRectangle.color.blue) / 255
        
        return [r,g,b]
    }

    func transformPoint(point: Point) -> CGPoint {
        return CGPoint(x: CGFloat(point.positionX), y: CGFloat(point.positionY))
    }
    
    func transformAlpha() -> CGFloat {
        let transformAlpha = CGFloat(transformRectangle.alpha.rawValue) / 10
        return transformAlpha
    }
}
