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

    func transformPoint(width: CGFloat, height: CGFloat) -> CGPoint {
        let transformX = CGFloat.random(in: 0...width)
        let transformY = CGFloat.random(in: 0...height)
        
        return CGPoint(x: transformX, y: transformY)
    }
    
    func transformAlpha() -> CGFloat {
        let transformAlpha = CGFloat(transformRectangle.alpha.rawValue) / 10
        return transformAlpha
    }
}
