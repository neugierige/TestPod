//
//  Constants.swift
//  Pods-TestPod_Example
//
//  Created by Nathan, Lu on 9/25/18.
//

import UIKit

public class GlobalConstants {

    // MARK: Spacing
    public enum Spacing: CGFloat {
        case xs = 5
        case sm = 10
        case md = 15
        case lg = 20
        case xl = 35
        case xxl = 50
    }

    struct Colors {
        static let magentaStandard = UIColor(red: 226/250, green: 0, blue: 116/250, alpha: 1.0)
        static let magentaSelected = UIColor(red: 186/250, green: 0, blue: 96/250, alpha: 1.0)
        static let disabled = UIColor(red: 190/250, green: 190/250, blue: 190/250, alpha: 1.0)
    }
}
