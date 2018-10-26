//
//  TMoNavigationController.swift
//  TestPod
//
//  Created by Nathan, Lu on 10/25/18.
//

import UIKit

@IBDesignable
public class TMoNavigationController: UINavigationController {

    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        commonInit()
    }

    public override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        
    }

}
