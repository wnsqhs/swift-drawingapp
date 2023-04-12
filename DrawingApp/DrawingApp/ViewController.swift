//
//  ViewController.swift
//  DrawingApp
//
//  Created by PJB on 2023/03/27.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    private var rectanglePlane = Plane()
    private var randomShapeGenerator = RandomShapeGenerator()
    lazy var shapeFactory = RandomShapeFactory(CommonConstituent: randomShapeGenerator)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printLog()
    }
    
    func printLog() {
        for i in 1...4 {
            let logRectangle = generateRandomRectangle()
            let logger = Logger(subsystem: "com.Aiden.DrawingApp", category: "ViewController")
            logger.log("Rect \(i) \(logRectangle.description) ")
        }
    }
    
    func generateRandomRectangle() -> Rectangle {
        return shapeFactory.createRectangle()
    }
    
    func createViewFromRectangle(figure: Rectangle) -> UIView {
        let viewIngredients = ViewTransformer(transformRectangle: figure)
        let transformAlpha = viewIngredients.transformAlpha()
        let transformColor = viewIngredients.transformColor()
        let transformPoint = viewIngredients.transformPoint(point: figure.point)
        
        let rectangleView = UIView(frame: CGRect(x: transformPoint.x, y: transformPoint.y, width: figure.size.width, height: figure.size.height))
        rectangleView.backgroundColor = UIColor(red: transformColor[0], green: transformColor[1], blue: transformColor[2], alpha: transformAlpha)
        
        return rectangleView
    }
}

class ScreenSize {
    static let screenWidth = (UIScreen.main.bounds.width - 150)
    static let screenHeight = (UIScreen.main.bounds.height - 120)
}
