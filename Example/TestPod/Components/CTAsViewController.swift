//
//  CTAsViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class CTAsViewController: DetailViewController {

    @IBOutlet weak var primaryButton: CTAPrimaryButton!
    @IBOutlet weak var secondaryButton: CTASecondaryButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryButton.isEnabled = false
        secondaryButton.isEnabled = false
    }

}
