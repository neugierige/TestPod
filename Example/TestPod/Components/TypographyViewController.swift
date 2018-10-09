//
//  TypographyViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class TypographyViewController: DetailViewController {

    @IBOutlet weak var h1: UILabel!
    @IBOutlet weak var h2: UILabel!
    @IBOutlet weak var h3: UILabel!
    @IBOutlet weak var h5: UILabel!
    @IBOutlet weak var h6: UILabel!
    @IBOutlet weak var h7: UILabel!
    @IBOutlet weak var pLead: UILabel!
    @IBOutlet weak var pRegular: UILabel!
    @IBOutlet weak var pSmall: UILabel!
    @IBOutlet weak var pXSmall: UILabel!
    @IBOutlet weak var pLegal: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        h1.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h1Heading)
        h2.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h2Heading)
        h3.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h3Heading)
        h5.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h5Heading)
        h6.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h6Heading)
        h7.font = TMoFonts.hFont(for: TMoFonts.HFontSizes.h7Subheading)
        h7.text = h7.text?.uppercased()
        pLead.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.lead)
        pRegular.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.regular)
        pSmall.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.small)
        pXSmall.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.xsmall)
        pLegal.font = TMoFonts.arialFont(size: TMoFonts.ArialFontSizes.legal)

    }

}
