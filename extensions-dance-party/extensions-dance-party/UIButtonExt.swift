//
//  UIButtonExt.swift
//  extensions-dance-party
//
//  Created by Lewis McGrath on 01/09/2017.
//  Copyright © 2017 Lewis McGrath. All rights reserved.
//

import UIKit

extension UIButton {
    
    func wiggle() {
        let wiggleAnimation = CABasicAnimation(keyPath: "position")
        wiggleAnimation.duration = 0.05
        wiggleAnimation.repeatCount = 5
        wiggleAnimation.autoreverses = true
        wiggleAnimation.fromValue = CGPoint(x: self.center.x - 4.0, y: self.center.y)
        wiggleAnimation.fromValue = CGPoint(x: self.center.x + 4.0, y: self.center.y)
        
        layer.add(wiggleAnimation, forKey: "position")
    }

    func dim() {
        UIView.animate(withDuration: 0.30, animations: {
            self.alpha = 0.75
        }) { (finished) in
            UIView.animate(withDuration: 0.30, animations: {
                self.alpha = 1.00
            })
        }
    }
    
    func colourise(){
            let randomNumberArray = generateRandomNumbers(quantity: 3)
            let randomColour = UIColor(red: randomNumberArray[0]/255, green: randomNumberArray[1]/255, blue: randomNumberArray[2]/255, alpha: 1.0)
            UIView.animate(withDuration: 0.3) { 
                self.backgroundColor = randomColour
            }
        }
}

