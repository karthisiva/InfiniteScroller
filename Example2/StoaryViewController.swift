//
//  StoaryViewController.swift
//  Example2
//
//  Created by Sureshbabu Naidu on 11/07/17.
//  Copyright © 2017 Lukasz Mroz. All rights reserved.
//

import UIKit
import SwiftCarousel
class StoaryViewController: UIViewController,SwiftCarouselDelegate {

    @IBOutlet weak var carousal: SwiftCarousel!
    override func viewDidLoad() {
        super.viewDidLoad()
        try! carousal.itemsFactory(itemsCount: 10) { choice in
           let labelFrame = CGRect(origin: .zero, size: CGSize(width: 100.0, height: 72.0))
//            let contView = PopUpView(frame: labelFrame)
//            contView .setNeedsDisplay(labelFrame)
           let label = UILabel(frame: labelFrame)
            label.text = "puppy\(choice+1)"
            label.textColor = UIColor.orange
//            label.backgroundColor = UIColor.white
            label.textAlignment = .center
//            contView.addSubview(label)
            return label
        }
        carousal.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        carousal.resizeType = .withoutResizing(10.0)
//        self.carousal.defaultSelectedIndex = 4
//        self.carousal.didSetDefaultIndex = true
        self.carousal .selectItem(9, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelectItem(item: UIView, index: Int, tapped: Bool) -> UIView? {
        print(index < 2 ? "🐶 number \(index+1) won! Woof woof 🐶" : "🐱 number \(index - 1) won! Meeeeeeow 🐱")
//        item.backgroundColor = UIColor.black
//        
        let width: CGFloat = item.frame.size.width
        let height: CGFloat = item.frame.size.height
        
        let radius: CGFloat = 0
        let arrowRadius: CGFloat = 4
        
        let arrowWidth: CGFloat = 5
        let arrowHeight: CGFloat = 5
        
        let startingPoint = CGPoint(x: radius, y: 0)
        let upperRightCenter = CGPoint(x: width - radius, y: radius)
        let bottomRightCenter = CGPoint(x: width - radius, y: height - radius - arrowHeight)
        let bottomLeftCenter = CGPoint(x: radius, y: height - radius - arrowHeight)
        let upperLeftCenter = CGPoint(x: radius, y: radius)
        
        let path: UIBezierPath = UIBezierPath()
        
        path.move(to: startingPoint)
        
        path.addArc(withCenter: upperRightCenter, radius: radius, startAngle: 270.degreesToRadians, endAngle: 0, clockwise: true)
        
        path.addArc(withCenter: bottomRightCenter, radius: radius, startAngle: 0, endAngle: 90.degreesToRadians, clockwise: true)
        
        path.addArc(withCenter: CGPoint(x: (width + arrowWidth)/2 + arrowRadius, y: height + arrowRadius - arrowHeight), radius: arrowRadius, startAngle: 270.degreesToRadians, endAngle: 225.degreesToRadians, clockwise: false)
        
        path.addArc(withCenter: CGPoint(x: width/2, y: height - arrowRadius), radius: arrowRadius, startAngle: 45.degreesToRadians, endAngle: 135.degreesToRadians, clockwise: true)
        
        path.addArc(withCenter: CGPoint(x: (width - arrowWidth)/2 - arrowRadius, y: height + arrowRadius - arrowHeight), radius: arrowRadius, startAngle: 315.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: false)
        
        path.addArc(withCenter: bottomLeftCenter, radius: radius, startAngle: 90.degreesToRadians, endAngle: 180.degreesToRadians, clockwise: true)
        
        path.addArc(withCenter: upperLeftCenter, radius: radius, startAngle: 180.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: true)
        
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.fillColor = UIColor.yellow.cgColor
        item.layer.addSublayer(shapeLayer)
        return item
        
    }
    func didDeselectItem(item: UIView, index: Int) -> UIView? {
        item.backgroundColor = UIColor.clear
        item.layer.sublayers = nil
//        if let sublayers = item.layer.sublayers {
//            for sublayer in sublayers {
//                sublayer.removeFromSuperlayer()
//            }
//        }
       return item
    }
   
}
