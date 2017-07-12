
import UIKit
class PopUpView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
    }
//    override func draw(_ rect: CGRect) {
//        
//        let width: CGFloat = rect.width
//        let height: CGFloat = rect.height
//        
//        let radius: CGFloat = 8
//        let arrowRadius: CGFloat = 4
//        
//        let arrowWidth: CGFloat = 5
//        let arrowHeight: CGFloat = 5
//
//        let startingPoint = CGPoint(x: radius, y: 0)
//        let upperRightCenter = CGPoint(x: width - radius, y: radius)
//        let bottomRightCenter = CGPoint(x: width - radius, y: height - radius - arrowHeight)
//        let bottomLeftCenter = CGPoint(x: radius, y: height - radius - arrowHeight)
//        let upperLeftCenter = CGPoint(x: radius, y: radius)
//        
//        let path: UIBezierPath = UIBezierPath()
//        
//        path.move(to: startingPoint)
//        
//        path.addArc(withCenter: upperRightCenter, radius: radius, startAngle: 270.degreesToRadians, endAngle: 0, clockwise: true)
//        
//        path.addArc(withCenter: bottomRightCenter, radius: radius, startAngle: 0, endAngle: 90.degreesToRadians, clockwise: true)
//        
//        path.addArc(withCenter: CGPoint(x: (width + arrowWidth)/2 + arrowRadius, y: height + arrowRadius - arrowHeight), radius: arrowRadius, startAngle: 270.degreesToRadians, endAngle: 225.degreesToRadians, clockwise: false)
//        
//        path.addArc(withCenter: CGPoint(x: width/2, y: height - arrowRadius), radius: arrowRadius, startAngle: 45.degreesToRadians, endAngle: 135.degreesToRadians, clockwise: true)
//
//        path.addArc(withCenter: CGPoint(x: (width - arrowWidth)/2 - arrowRadius, y: height + arrowRadius - arrowHeight), radius: arrowRadius, startAngle: 315.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: false)
//
//        path.addArc(withCenter: bottomLeftCenter, radius: radius, startAngle: 90.degreesToRadians, endAngle: 180.degreesToRadians, clockwise: true)
//        
//        path.addArc(withCenter: upperLeftCenter, radius: radius, startAngle: 180.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: true)
//        
//        path.close()
//        
//        UIColor.gray.setFill()
//        UIColor.clear.setStroke()
//        
//        path.fill()
//        path.stroke()
//    }
//    
}

extension Int {
    var degreesToRadians: CGFloat {
        return CGFloat(M_PI) * CGFloat(self) / 180.0
    }
}
