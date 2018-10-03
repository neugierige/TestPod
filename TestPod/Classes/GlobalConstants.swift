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


    // MARK: Colors
    private struct Colors {
        public static let magentaBrand = UIColor(red: 226/255, green: 0, blue: 116/255, alpha: 1.0) // #E20074
        public static let magentaDarker = UIColor(red: 186/255, green: 0, blue: 96/255, alpha: 1.0) // #BA0060
        public static let grayLight = UIColor(red: 190/255, green: 190/255, blue: 190/255, alpha: 1.0) // #BEBEBE
    }

    public struct ButtonColors {
        public static let normal = Colors.magentaBrand
        public static let highlighted = Colors.magentaDarker
        public static let disabled = Colors.grayLight
    }

    private struct TextColors {
        static let grayDark = UIColor(white: 90/255, alpha: 1.0) // #5A5A5A
        static let grayDarker = UIColor(white: 50/255, alpha: 1.0) // #323232
        static let black = UIColor.black // #000000
    }

    public struct FontColors {
        public static let h1 = TextColors.grayDarker
        public static let h2 = TextColors.grayDarker
        public static let h3 = TextColors.grayDarker
        public static let h5 = TextColors.grayDarker
        public static let h6 = TextColors.black
        public static let h7 = TextColors.grayDark
        public static let pFont = TextColors.grayDark
        public static let aFont = Colors.magentaBrand
    }


    // MARK: Fonts
    enum TeleGroteskFontNames: String {
        case fet = "Tele-GroteskFet"
        case hal = "Tele-GroteskHal"
        case nor = "Tele-GroteskNor"
        case ult = "Tele-GroteskUlt"
    }

    static let arialName = "ArialMT"

    public enum HFontSizes {
        case h1Heading, h2Heading, h3Heading, h5Heading, h6Heading, h7Subheading

        var style: TeleGroteskFontNames {
            switch self {
            case .h1Heading, .h2Heading, .h3Heading, .h5Heading: return .fet
            case .h6Heading, .h7Subheading: return .hal
            }
        }

        var pointSize: CGFloat {
            switch self {
            case .h1Heading: return 50
            case .h2Heading: return 40
            case .h3Heading: return 32
            case .h5Heading, .h6Heading, .h7Subheading: return 24
            }
        }
    }

    public func hFont(for size: HFontSizes) -> UIFont? {
        return UIFont(name: size.style.rawValue, size: size.pointSize)
    }

    public enum ArialFontSizes: CGFloat {
        case lead = 18
        case regular = 16
        case small = 14
        case xsmall = 12
        case legal = 10
    }

    public func arialFont(size: ArialFontSizes) -> UIFont? {
        return UIFont(name: GlobalConstants.arialName, size: size.rawValue)
    }

}
