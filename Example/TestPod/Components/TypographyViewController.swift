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

    let sampleText = "The quick brown fox jumped over the lazy dog.\n0123456789"

    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var h1 = UILabel()
    var h2 = UILabel()
    var h3 = UILabel()
    var h4 = UILabel()
    var subheading1 = UILabel()
    var subheading2 = UILabel()
    var pLead = UILabel()
    var pRegular = UILabel()
    var pSmall = UILabel()
    var pXSmall = UILabel()
    var pLegal = UILabel()
    var aRegular = UILabel()
    var aSmall = UILabel()
    var aXSmall = UILabel()
    var aLegal = UILabel()

    var h1Label = UILabel()
    var h2Label = UILabel()
    var h3Label = UILabel()
    var h4Label = UILabel()
    var subheading1Label = UILabel()
    var subheading2Label = UILabel()
    var pLeadLabel = UILabel()
    var pRegularLabel = UILabel()
    var pSmallLabel = UILabel()
    var pXSmallLabel = UILabel()
    var pLegalLabel = UILabel()
    var aRegularLabel = UILabel()
    var aSmallLabel = UILabel()
    var aXSmallLabel = UILabel()
    var aLegalLabel = UILabel()

    var fontExamples: [UILabel] = []
    var fontLabels: [UILabel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupFontExamples()
        setupFontLabels()
        layoutFontLabels()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

    }

    func setupFontExamples() {
        fontExamples = [h1, h2, h3, h4, subheading1, subheading2, pLead, pRegular, pSmall, pXSmall, pLegal, aRegular, aSmall, aXSmall, aLegal]
        fontExamples.forEach {
            $0.text = sampleText
            $0.numberOfLines = 0
            $0.frame.size.width = view.frame.width * 0.85
        }

        [pLead, pRegular, pSmall, pXSmall, pLegal].forEach { $0.textColor = TMoFonts.pFontColor }
        [aRegular, aSmall, aXSmall, aLegal].forEach { $0.textColor = TMoFonts.aFontColor }
        [h1, h2, h3, h4, subheading1, subheading2].forEach { $0.textColor = TMoFonts.hFontColor }

        h1.font = TMoFonts.hFont(for: .h1Heading)
        h2.font = TMoFonts.hFont(for: .h2Heading)
        h3.font = TMoFonts.hFont(for: .h3Heading)
        h4.font = TMoFonts.hFont(for: .h4Heading)
        subheading1.font = TMoFonts.hFont(for: .subheading1)
        subheading2.font = TMoFonts.hFont(for: .subheading2)
        pLead.font = TMoFonts.pFont(.lead)
        pRegular.font = TMoFonts.pFont(.regular)
        pSmall.font = TMoFonts.pFont(.small)
        pXSmall.font = TMoFonts.pFont(.xsmall)
        pLegal.font = TMoFonts.pFont(.legal)
        aRegular.font = TMoFonts.aFont(.regular)
        aSmall.font = TMoFonts.aFont(.small)
        aXSmall.font = TMoFonts.aFont(.xsmall)
        aLegal.font = TMoFonts.aFont(.legal)

        let attributedString = NSMutableAttributedString(string: sampleText.uppercased())
        attributedString.addAttribute(NSAttributedStringKey.kern, value: 0.5, range: NSMakeRange(0, attributedString.length))
        subheading2.attributedText = attributedString
    }

    func setupFontLabels() {
        h1Label.text = "H1 Heading"
        h2Label.text = "H2 Heading"
        h3Label.text = "H3 Heading"
        h4Label.text = "H4 Heading"
        subheading1Label.text = "Subheading 1"
        subheading2Label.text = "Subheading 2"
        pLeadLabel.text = "p.lead"
        pRegularLabel.text = "p.regular"
        pSmallLabel.text = "p.small"
        pXSmallLabel.text = "p.xsmall"
        pLegalLabel.text = "p.legal"
        aRegularLabel.text = "a.regular"
        aSmallLabel.text = "a.small"
        aXSmallLabel.text = "a.xsmall"
        aLegalLabel.text = "a.legal"

        fontLabels = [h1Label, h2Label, h3Label, h4Label, subheading1Label, subheading2Label, pLeadLabel, pRegularLabel, pSmallLabel, pXSmallLabel, pLegalLabel, aRegularLabel, aSmallLabel, aXSmallLabel, aLegalLabel]
        fontLabels.forEach {
            $0.font = UIFont.systemFont(ofSize: 12.0)
            $0.textColor = GlobalConstants.TextColors.grayDark
        }
    }

    func layoutFontLabels() {
        view.addSubview(scrollView)
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

        var bigStack: [UIStackView] = []
        for index in 0..<fontExamples.count {
            let stack = fontStack(fontLabel: fontLabels[index], fontExample: fontExamples[index])
            bigStack.append(stack)
        }
        let allLabelsStack = UIStackView(arrangedSubviews: bigStack)
        allLabelsStack.alignment = .leading
        allLabelsStack.axis = .vertical
        allLabelsStack.spacing = 50

        scrollView.addSubview(allLabelsStack)
        allLabelsStack.translatesAutoresizingMaskIntoConstraints = false
        allLabelsStack.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50).isActive = true
        allLabelsStack.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        allLabelsStack.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 0.85).isActive = true

        scrollView.isScrollEnabled = true
        scrollView.contentOffset = CGPoint(x: 0, y: -50)
        let height = allLabelsStack.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height + 200
        scrollView.contentSize = CGSize(width: view.frame.width, height: height)
    }

    func fontStack(fontLabel: UILabel, fontExample: UILabel) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: [fontLabel, fontExample])
        stackView.alignment = .leading
        stackView.axis = .vertical
        return stackView
    }
}
