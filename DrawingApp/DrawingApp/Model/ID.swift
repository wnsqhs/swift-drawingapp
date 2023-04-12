//
//  ID.swift
//  DrawingApp
//
//  Created by PJB on 2023/04/03.
//

import Foundation

class ID: CustomStringConvertible {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    var description: String {
        return "ID: \(id)"
    }
}
