//
//  ShakingTextField.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import Foundation

import UIKit

class ShakingTextField: UITextField {

   
    func shake () {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
        
    }
    
}
