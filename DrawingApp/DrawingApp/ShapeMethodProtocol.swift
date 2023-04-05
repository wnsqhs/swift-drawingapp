//
//  ShapeMethodProtocol.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

protocol ShapeMethod {
    static func createPoint(width: CGFloat, height: CGFloat) -> Point
    static func createColor() -> Color
    static func createAlpha() -> Alpha
}
