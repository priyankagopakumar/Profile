//
//  RoundedCardView.swift
//  Profile
//
//  Created by Priyanka Gopakumar on 3/24/21.
//

import UIKit

@IBDesignable
class RoundedCardView: UIView {

    @IBInspectable var cornerRadius: CGFloat {
        set {
            if #available(iOS 11.0, *){
                clipsToBounds = true
                layer.cornerRadius = newValue
                layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
            }else{
              let path = UIBezierPath(roundedRect: bounds,byRoundingCorners:[.topLeft, .topRight],cornerRadii: CGSize(width: newValue, height:  newValue))
              let maskLayer = CAShapeLayer()
              maskLayer.path = path.cgPath
              layer.mask = maskLayer
            }
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor {
        set {
            layer.borderColor = newValue.cgColor
        }
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
    }
    @IBInspectable var shadowColor: UIColor {
        set {
           self.layer.shadowColor = newValue.cgColor
        }
        get {
           return UIColor(cgColor: self.layer.shadowColor!)
        }
    }
    @IBInspectable var shadowOpacity: Float {
        set {
           self.layer.shadowOpacity = newValue
        }
        get {
           return self.layer.shadowOpacity
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
