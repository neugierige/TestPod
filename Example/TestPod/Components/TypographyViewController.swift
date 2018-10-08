//
//  TypographyViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class TypographyViewController: UIViewController {

    @IBOutlet weak var h1: UILabel!
    @IBOutlet weak var h2: UILabel!
    @IBOutlet weak var h3: UILabel!
    @IBOutlet weak var h5: UILabel!
    @IBOutlet weak var h6: UILabel!
    @IBOutlet weak var h7: UILabel!
    @IBOutlet weak var pRegular: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        h1.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h1Heading)
        h2.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h2Heading)
        h3.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h3Heading)
        h5.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h5Heading)
        h6.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h6Heading)
        h7.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h7Subheading)
        h7.text = h7.text?.uppercased()
        pRegular.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.regular)
    }

}
