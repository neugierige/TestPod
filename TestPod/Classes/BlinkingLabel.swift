//
//  BlinkingLabel.swift
//  Pods-TestPod_Example
//
//  Created by Nathan, Lu on 9/18/18.
//

import UIKit

public class BlinkingLabel: UILabel {
    
    public func startBlinking() {
        let options: UIViewAnimationOptions = .repeat
        UIView.animate(withDuration: 1.0, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }

    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
