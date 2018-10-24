//
//  Icons+Logos.swift
//  TestPod
//
//  Created by Nathan, Lu on 10/9/18.
//

import UIKit

public class Icon {
    private static var internalBundle: Bundle = Bundle(for: Icon.self)

    public static var bundle: Bundle {
        let url = Icon.internalBundle.resourceURL!
        let b = Bundle(url: url.appendingPathComponent("TestPod.bundle"))
        if let v = b {
            Icon.internalBundle = v
        }
        return Icon.internalBundle
    }

    public static func icon(_ name: String) -> UIImage? {
        return UIImage(named: name, in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
    }
}

public struct IconNames {
    public struct playButton {
        public static let large = Icon.icon("35_PlayButtonIcon_105")
        public static let small = Icon.icon("35_PlayButtonIcon_82")
    }
    public static let tmoLogo = Icon.icon("36_TMOLogo")
    public static let score = Icon.icon("37_Score")
    public struct checkmark {
        public static let magenta = Icon.icon("44_Checkmark_Magenta")
        public static let green = Icon.icon("44_Checkmark_Green")
    }

    public struct camera {
        public static let magenta = Icon.icon("46_Camera_Magenta")
        public static let gray = Icon.icon("46_Camera_Gray")
    }
    public struct reload {
        public static let magenta = Icon.icon("47_Reload_Magenta")
        public static let gray = Icon.icon("47_Reload_Gray")
    }
    public struct fullStar {
        public static let magenta = Icon.icon("48_StarFull_Magenta")
        public static let gray = Icon.icon("48_StarFull_Gray")
    }
    public struct halfStar {
        public static let magenta = Icon.icon("49_StarHalfFull_Magenta")
        public static let gray = Icon.icon("49_StarHalfFull_Gray")
    }
    public struct emptyStar {
        public static let magenta = Icon.icon("50_StarEmpty_Magenta")
        public static let gray = Icon.icon("50_StarEmpty_Gray")
    }
    public struct plusSign {
        public static let magenta = Icon.icon("51_Add_Magenta")
        public static let gray = Icon.icon("51_Add_Gray")
    }
    public struct minusSign {
        public static let magenta = Icon.icon("52_Subtract_Magenta")
        public static let gray = Icon.icon("52_Subtract_Gray")
    }
    public struct closeSign {
        public static let magenta = Icon.icon("53_Close_Magenta")
        public static let gray = Icon.icon("53_Close_Gray")
    }
    public struct managerLogin {
        public static let magenta = Icon.icon("56_ManagerLogin_Magenta")
        public static let gray = Icon.icon("56_ManagerLogin_Gray")
    }
    public struct menu {
        public static let magenta = Icon.icon("57_Menu_Magenta")
        public static let gray = Icon.icon("57_Menu_Gray")
    }
    public struct scan {
        public static let magenta = Icon.icon("60_Scan_Magenta")
        public static let gray = Icon.icon("60_Scan_Gray")
    }
    public struct caretLine {
        public static let magenta = Icon.icon("63_Caret_Line_Gray")
        public static let gray = Icon.icon("63_Caret_Line_Magenta")
    }
    public struct caretSolid {
        public static let magenta = Icon.icon("65_Caret_Solid_Magenta")
        public static let gray = Icon.icon("65_Caret_Solid_Gray")
    }
    public struct search {
        public static let magenta = Icon.icon("66_Search_Magenta")
        public static let gray = Icon.icon("66_Search_Gray")
    }

    public static let info = Icon.icon("45_Info")
    public static let lockClosed = Icon.icon("54_Lock")
    public static let lockOpen = Icon.icon("55_Unlock")

    public static let error = Icon.icon("58_Error")
    public static let alert = Icon.icon("59_Alert")

    public struct thinArrow {
        public static let up = Icon.icon("236_BillIncrease")
        public static let down = Icon.icon("237_BillDecrease")
        public static let left = Icon.icon("283_ArrowLeft")
        public static let right = Icon.icon("284_ArrowRight")
    }
    public static let jump = Icon.icon("240_Jump")
    public static let entrust = Icon.icon("242_Entrust")
    public static let mapMarker = Icon.icon("257_MapMarker")
}

public struct SocialMediaIcons {
    public struct facebook {
        public static let dark = Icon.icon("facebookSquare_Black")
        public static let light = Icon.icon("facebookSquare_White")
    }
    public struct twitter {
        public static let dark = Icon.icon("twitterSquare_Black")
        public static let light = Icon.icon("twitterSquare_White")
    }
    public struct instagram {
        public static let dark = Icon.icon("instagramSquare_Black")
        public static let light = Icon.icon("instagramSquare_White")
    }
    public struct googleplus {
        public static let dark = Icon.icon("googlePlusSquare_Black")
        public static let light = Icon.icon("googlePlusSquare_White")
    }
}

public struct CreditCardIcons {
    public struct accel {
        public static let enabled = Icon.icon("accelCard")
        public static let disabled = Icon.icon("accelCard_disabled")
    }
    public struct amex {
        public static let enabled = Icon.icon("amexCard")
        public static let disabled = Icon.icon("amexCard_disabled")
    }
    public struct atmCard {
        public static let enabled = Icon.icon("atmCard")
        public static let disabled = Icon.icon("atmCard_disabled")
    }
    public struct bankCard {
        public static let enabled = Icon.icon("bankCard")
        public static let disabled = Icon.icon("bankCard_disabled")
    }
    public struct discoverCard {
        public static let enabled = Icon.icon("discoverCard")
        public static let disabled = Icon.icon("discoverCard_disabled")
    }
    public struct mastercardCard {
        public static let enabled = Icon.icon("mastercardCard")
        public static let disabled = Icon.icon("mastercardCard_disabled")
    }
    public struct nyceCard {
        public static let enabled = Icon.icon("nyceCard")
        public static let disabled = Icon.icon("nyceCard_disabled")
    }
    public struct pulseCard {
        public static let enabled = Icon.icon("pulseCard")
        public static let disabled = Icon.icon("pulseCard_disabled")
    }
    public struct starCard {
        public static let enabled = Icon.icon("starCard")
        public static let disabled = Icon.icon("starCard_disabled")
    }
    public struct visaCard {
        public static let enabled = Icon.icon("visaCard")
        public static let disabled = Icon.icon("visaCard_disabled")
    }
}
