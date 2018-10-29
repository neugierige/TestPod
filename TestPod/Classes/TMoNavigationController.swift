//
//  TMoNavigationController.swift
//  TestPod
//
//  Created by Nathan, Lu on 10/25/18.
//

import UIKit

@IBDesignable
public class TMoNavigationController: UINavigationController {

    @IBInspectable public var navBarTitle: String? {
        get {
            return navigationBar.topItem?.title
        }
        set {
            navigationBar.topItem?.title = newValue
        }
    }

    public init(rootViewController: UIViewController, title: String, subtitle: String? = nil) {
        super.init(rootViewController: rootViewController)
        commonInitWith(title: title, subtitle: subtitle)
    }

    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override init(rootViewController: UIViewController) {
        fatalError("use init(rootViewController:, title:) instead")
    }

    override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        fatalError("use init(rootViewController:, title:) instead")
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInitWith()
    }

    private func commonInitWith(title: String = "", subtitle: String? = nil) {
        setTitle(title, subtitle: subtitle)
        navigationBar.tintColor = GlobalConstants.TextColors.magenta
        if #available(iOS 11.0, *) {
            navigationBar.prefersLargeTitles = true
        }
    }

    func setTitle(_ title: String, subtitle: String?) {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = TMoFonts.hFont(for: .h1Heading)
        titleLabel.textColor = .black

        let subtitleLabel = UILabel()
        subtitleLabel.text = subtitle
        subtitleLabel.font = .systemFont(ofSize: 16.0)
        subtitleLabel.textColor = .gray

        if #available(iOS 9.0, *) {
            let stackView = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
            stackView.distribution = .equalCentering
            stackView.alignment = .center
            stackView.axis = .vertical
            navigationItem.titleView = stackView
        } else {
            // Fallback on earlier versions
        }

    }

}
