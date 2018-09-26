//
//  CTAButton.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 9/26/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

@IBDesignable
public class CTAPrimaryButton: UIButton {

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

    func setupView() {
        titleLabel?.font = UIFont.init(name: "ArialMT", size: CTAConstants.fontSize)
        titleLabel?.textAlignment = .center
        layer.cornerRadius = CTAConstants.cornerRadius
        layer.masksToBounds = true
        backgroundColor = UIColor(red: 226/250, green: 0, blue: 116/250, alpha: 1.0)
        setTitleColor(.white, for: .normal)
    }

}
