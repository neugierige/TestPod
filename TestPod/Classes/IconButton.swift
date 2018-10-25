//
//  IconButton.swift
//  TestPod
//
//  Created by Nathan, Lu on 10/24/18.
//

import UIKit

@IBDesignable
public class IconButton: UIButton {

    var applyDisabledGray: Bool = true

    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    open override var isEnabled: Bool {
        didSet {
            guard applyDisabledGray == true else {
                return
            }
            tintColor = isEnabled ? GlobalConstants.ButtonColors.normal : GlobalConstants.ButtonColors.iconDisabled
        }
    }

    private func commonInit() {
        tintColor = GlobalConstants.ButtonColors.normal
        contentMode = .scaleAspectFit
        adjustsImageWhenDisabled = false
    }

}
