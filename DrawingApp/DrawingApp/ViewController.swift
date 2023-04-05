//
//  ViewController.swift
//  DrawingApp
//
//  Created by PJB on 2023/03/27.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let factory = RandomShapeFactory()
        printLog()
        
        func printLog() {
            for i in 1...4 {
                let rectangleView = factory.createRectangle()
                let logger = Logger(subsystem: "com.Aiden.DrawingApp", category: "ViewController")
                logger.log("Rect \(i) \(rectangleView.description) ")
            }
        }
    }
}

class ScreenSize {
    static let screenWidth = UIScreen.main.bounds.width
    static let screenHeight = UIScreen.main.bounds.height
}
