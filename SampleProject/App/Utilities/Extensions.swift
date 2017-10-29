//
//  Extensions.swift
//  SampleProject
//
//  Created by Jayven Nhan on 29/10/17.
//  Copyright © 2017 Jayven Nhan. All rights reserved.
//

import UIKit

// Animation
extension UIView {
    
    func flash() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }) { (completed) in
            if completed {
                UIView.animate(withDuration: 0.3, delay: 2.0, options: .curveEaseOut, animations: {
                    self.alpha = 0.0
                }, completion: nil)
            }
        }
    }
    
    func fadeIn() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: nil)
    }
    
    func fadeOut() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveEaseOut, animations: {
            self.alpha = 0
        }) { (completed) in
        }
    }
    
}
