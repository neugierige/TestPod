//
//  CTAsViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/7/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class CTAsViewController: UIViewController {

    @IBOutlet weak var primaryButton: CTAPrimaryButton!
    @IBOutlet weak var secondaryButton: CTASecondaryButton!

    @IBOutlet weak var h1: UILabel!
    @IBOutlet weak var h3: UILabel!
    @IBOutlet weak var h6: UILabel!
    @IBOutlet weak var pRegular: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        primaryButton.isEnabled = false
        secondaryButton.isEnabled = false

        h1.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h1Heading)
        h3.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h3Heading)
        h6.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h6Heading)
        pRegular.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.regular)
    }

}
