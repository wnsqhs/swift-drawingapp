//
//  ShapeMethodProtocol.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/05.
//

import Foundation

protocol CommonConstituent {
    func createRandomPoint(width: CGFloat, height: CGFloat) -> Point
    func createRandomColor() -> Color
    func createRandomAlpha() -> Alpha
}
