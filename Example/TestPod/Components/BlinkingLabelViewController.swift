//
//  BlinkingLabelViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 9/25/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class BlinkingLabelViewController: UIViewController {

    @IBOutlet weak var blinkLabel: BlinkingLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        blinkLabel.startBlinking()
    }
}
