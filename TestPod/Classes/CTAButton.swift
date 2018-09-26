//
//  CTAButton.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 9/26/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

@IBDesignable public class CTAPrimaryButton: UIButton {

    struct Constants {
        static let width: CGFloat = 280
        static let height: CGFloat = 45
        static let topBottomInset: CGFloat = 35
        static let fontSize: CGFloat = 18
        static let cornerRadius: CGFloat = 4.0
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

    func setupView() {
        titleLabel?.font = UIFont.init(name: "ArialMT", size: Constants.fontSize)
        titleLabel?.textAlignment = .center
        layer.cornerRadius = Constants.cornerRadius
        layer.masksToBounds = true
        backgroundColor = UIColor(red: 226/250, green: 0, blue: 116/250, alpha: 1.0)
        setTitleColor(.white, for: .normal)


        let midPoint = UIScreen.main.bounds.midX
        frame = CGRect(x: midPoint - Constants.width/2, y: frame.origin.y, width: Constants.width, height: Constants.height)
        print("midpoint: \(midPoint)")
        let edgeInsets = UIEdgeInsetsMake(Constants.topBottomInset, 0, Constants.topBottomInset, 0)
        contentEdgeInsets = edgeInsets
    }

}
