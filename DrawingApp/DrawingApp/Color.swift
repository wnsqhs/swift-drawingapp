//
//  Color.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/03.
//

import Foundation

class Color: CustomStringConvertible {
    private var red: Int
    private var green: Int
    private var blue: Int
    
    init(red: Int, green: Int, blue: Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    var description: String {
        return "R: \(red), G: \(green), B: \(blue)"
    }
}
