//
//  Alpha.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/03.
//

import Foundation

enum Alpha: Int, CaseIterable, CustomStringConvertible {
    case one = 1,
         two,
         three,
         four,
         five,
         six,
         seven,
         eight,
         nine,
         ten
    
    var description: String {
        return "Alpha \(self.rawValue)"
    }
}
