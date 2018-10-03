//
//  CTAPrimaryButton.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 9/26/18.
//

import UIKit

public struct CTAConstants {
    static let width: CGFloat = 280
    static let height: CGFloat = 45
    static let ctaFont = UIFont(name: "ArialMT", size: 18)
    static let cornerRadius: CGFloat = 4.0
    static let borderWidth: CGFloat = 1.0
}

@IBDesignable
public class CTAPrimaryButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
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
        frame.size = CGSize(width: CTAConstants.width, height: CTAConstants.height)

        titleLabel?.font = CTAConstants.ctaFont
        titleLabel?.textAlignment = .center

        layer.cornerRadius = CTAConstants.cornerRadius
        layer.masksToBounds = true

        backgroundColor = GlobalConstants.ButtonColors.normal
        setTitleColor(.white, for: .normal)
    }
}
