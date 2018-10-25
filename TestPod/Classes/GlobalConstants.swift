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
        public static let grayDark = UIColor(red: 90/255, green: 90/255, blue: 90/255, alpha: 1.0)
    }

    public struct ButtonColors {
        public static let normal = Colors.magentaBrand
        public static let highlighted = Colors.magentaDarker
        public static let disabled = Colors.grayLight
        public static let iconDisabled = Colors.grayDark
        public static let checkmarkGreen = UIColor(red: 9/255, green: 177/255, blue: 25/255, alpha: 1.0)
    }

    public struct TextColors {
        static let grayDark = UIColor(white: 90/255, alpha: 1.0) // #5A5A5A
        static let grayDarker = UIColor(white: 50/255, alpha: 1.0) // #323232
        static let black = UIColor.black // #000000
        static let magenta = Colors.magentaBrand
    }


    // MARK: Fonts
    enum TeleGroteskFontNames: String {
        case fet = "Tele-GroteskFet"
        case hal = "Tele-GroteskHal"
        case nor = "Tele-GroteskNor"
        case ult = "Tele-GroteskUlt"
    }

    static let arialName = "ArialMT"

}
