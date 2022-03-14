//
//  AnimView.swift
//  Midterm_Mitkumar
//
//  Created by user215540 on 3/13/22.
//

import UIKit

class AnimView: UIView {

    enum Direction: Int {
        case FromLeft = 0
        case FromRight = 1
    }
    
    @IBInspectable var direction: Int = 0
    @IBInspectable var delay: Double = 0.0

    override func layoutSubviews() {
        ininAnim()
        UIView.animate(withDuration: 0.5, delay: self.delay, options: .curveEaseIn, animations: {
            if let s = self.superview {
                if self.direction == Direction.FromLeft.rawValue {
                    self.center.x += s.bounds.width
                } else {
                    self.center.x -= s.bounds.width
                }
            }
        }, completion: nil)
        
    }
    
    func ininAnim() {
        if let s = self.superview {
            if direction == Direction.FromLeft.rawValue {
                self.center.x -= s.bounds.width
            }  else {
                self.center.x += s.bounds.width
            }
        }

    }
}
