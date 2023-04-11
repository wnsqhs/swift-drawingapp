//
//  ShapeMethodProtocol.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

protocol CommonConstituent {
    func createPoint(width: CGFloat, height: CGFloat) -> Point
    func createColor() -> Color
    func createAlpha() -> Alpha
}
