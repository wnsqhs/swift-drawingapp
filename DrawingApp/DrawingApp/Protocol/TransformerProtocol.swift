//
//  File.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/12.
//

import Foundation

protocol Transformer {
    func transformColor() -> [CGFloat]
    func transformPoint(point: Point) -> CGPoint
    func transformAlpha() -> CGFloat
}
