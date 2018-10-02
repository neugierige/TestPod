//
//  CTAButton.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 9/26/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

@IBDesignable
public class CTAButton: UIButton {

    var isPrimary: Bool = true

    struct CTAConstants {
        static let width: CGFloat = 280
        static let height: CGFloat = 45
        static let fontSize: CGFloat = 18
        static let cornerRadius: CGFloat = 4.0

        static func buttonFrame(yPosition: CGFloat) -> CGRect {
            let midPoint = UIScreen.main.bounds.midX
            return CGRect(x: midPoint - CTAConstants.width/2, y: yPosition, width: CTAConstants.width, height: CTAConstants.height)
        }
    }

    init(yPosition: CGFloat) {
        let buttonFrame = CTAConstants.buttonFrame(yPosition: yPosition)
        super.init(frame: buttonFrame)
        setupView()
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        fatalError("use init(yPosition:) instead")
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        frame = CTAConstants.buttonFrame(yPosition: frame.origin.y)
        setupView()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        frame = CTAConstants.buttonFrame(yPosition: frame.origin.y)
        setupView()
    }

    public override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? GlobalConstants.ButtonColors.highlighted : GlobalConstants.ButtonColors.normal
        }
    }

    public override var isEnabled: Bool {
        didSet {
            if !isEnabled {
                backgroundColor = GlobalConstants.ButtonColors.disabled
            }
        }
    }

    private func setupView() {
        titleLabel?.font = UIFont.init(name: "ArialMT", size: CTAConstants.fontSize)
        titleLabel?.textAlignment = .center
        layer.cornerRadius = CTAConstants.cornerRadius
        layer.masksToBounds = true

        if isPrimary {
            backgroundColor = GlobalConstants.ButtonColors.normal
            setTitleColor(.white, for: .normal)
        } else {
            setupSecondaryView()
        }
    }

    private func setupSecondaryView() {
        backgroundColor = .white
        setTitleColor(GlobalConstants.ButtonColors.normal, for: .normal)
        setTitleColor(GlobalConstants.ButtonColors.highlighted, for: .highlighted)
        setTitleColor(GlobalConstants.ButtonColors.disabled, for: .disabled)
    }
}
