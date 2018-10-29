//
//  TMoFonts.swift
//  Pods-TestPod_Example
//
//  Created by Nathan, Lu on 10/3/18.
//

import UIKit

public class TMoFonts {

    public static func loadFontIfNeeded(name: String, fontExtension: String) {
        FontLoader.loadFontIfNeeded(fontName: name, fontExtension: fontExtension)
    }

    public enum HFonts {
        case h1Heading, h2Heading, h3Heading, h4Heading, subheading1, subheading2

        var style: String {
            switch self {
            case .h1Heading, .h2Heading: return GlobalConstants.TeleGroteskFontNames.ult.rawValue
            case .h3Heading: return GlobalConstants.TeleGroteskFontNames.fet.rawValue
            case .h4Heading: return GlobalConstants.TeleGroteskFontNames.hal.rawValue
            case .subheading1: return ""
            case .subheading2: return GlobalConstants.TeleGroteskFontNames.hal.rawValue
            }
        }

        var color: UIColor {
            return GlobalConstants.TextColors.grayDarker
        }

        var pointSize: CGFloat {
            switch self {
            case .h1Heading: return 50
            case .h2Heading: return 32
            case .h3Heading: return 32
            case .h4Heading: return 24
            case .subheading1: return 18
            case .subheading2: return 18
            }
        }
    }

    public static func hFont(for size: HFonts) -> UIFont? {
        if size == .subheading1 {
            return UIFont.boldSystemFont(ofSize: size.pointSize)
        }
        loadFontIfNeeded(name: size.style, fontExtension: "ttf")
        return UIFont(name: size.style, size: size.pointSize)
    }

    public enum PFonts {
        case lead, regular, small, xsmall, legal

        var color: UIColor {
            return GlobalConstants.TextColors.grayDark
        }

        var pointSize: CGFloat {
            switch self {
            case .lead: return 18
            case .regular: return 16
            case .small: return 12
            case .xsmall: return 11
            case .legal: return 10
            }
        }
    }

    public static func pFont(_ font: PFonts) -> UIFont {
        return UIFont.systemFont(ofSize: font.pointSize)
    }

    public enum AFonts {
        case regular, small, xsmall, legal

        var color: UIColor {
            return GlobalConstants.TextColors.magenta
        }

        var pointSize: CGFloat {
            switch self {
            case .regular: return 16
            case .small: return 12
            case .xsmall: return 11
            case .legal: return 10
            }
        }
    }

    public static func aFont(_ font: AFonts) -> UIFont {
        return UIFont.systemFont(ofSize: font.pointSize)
    }
}

private class FontLoader {

    static func loadFontIfNeeded(fontName: String, fontExtension: String) {

        if UIFont(name: fontName, size: 1) == nil {
            let bundle = Bundle(for: FontLoader.self)
            guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension, subdirectory: "TestPod.bundle") else {
                fatalError("Couldn't find font \(fontName)")
            }

            guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
                fatalError("Couldn't load data from the font \(fontName)")
            }

            let font = CGFont(fontDataProvider)

            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                let errorDescription = CFErrorCopyDescription(error!.takeUnretainedValue())
                let nsError = error!.takeUnretainedValue() as Any as! Error
                NSException(name: .internalInconsistencyException, reason: errorDescription as String?, userInfo: [NSUnderlyingErrorKey: nsError as Any]).raise()
            }
        }
    }
}
