//
//  CTASecondaryButton.swift
//  Pods
//
//  Created by Nathan, Lu on 10/3/18.
//

import UIKit

@IBDesignable
public class CTASecondaryButton: UIButton {

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
            if isHighlighted {
                layer.borderColor = GlobalConstants.ButtonColors.highlighted.cgColor
            } else {
                layer.borderColor = UIColor.gray.cgColor
            }
        }
    }

    public override var isEnabled: Bool {
        didSet {
            if !isEnabled {
                layer.borderColor = GlobalConstants.ButtonColors.disabled.cgColor
            }
        }
    }

    func setupView() {
        frame.size = CGSize(width: CTAConstants.width, height: CTAConstants.height)

        titleLabel?.font = CTAConstants.ctaFont
        titleLabel?.textAlignment = .center

        layer.cornerRadius = CTAConstants.cornerRadius
        layer.masksToBounds = true

        backgroundColor = .white
        setTitleColor(GlobalConstants.ButtonColors.normal, for: .normal)
        setTitleColor(GlobalConstants.ButtonColors.highlighted, for: .highlighted)
        setTitleColor(GlobalConstants.ButtonColors.disabled, for: .disabled)

        layer.borderWidth = CTAConstants.borderWidth
        layer.borderColor = UIColor.gray.cgColor
    }
}
