//
//  ViewController.swift
//  TestPod
//
//  Created by neugierige on 09/17/2018.
//  Copyright (c) 2018 neugierige. All rights reserved.
//

import UIKit
import TestPod

class ViewController: UIViewController {

    @IBOutlet weak var primaryButton: CTAPrimaryButton!
    @IBOutlet weak var secondaryButton: CTASecondaryButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryButton.isEnabled = false
        secondaryButton.isEnabled = false
    }

}
