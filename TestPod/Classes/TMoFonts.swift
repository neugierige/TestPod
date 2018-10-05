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

    public enum HFontSizes {
        case h1Heading, h2Heading, h3Heading, h5Heading, h6Heading, h7Subheading

        var style: GlobalConstants.TeleGroteskFontNames {
            switch self {
            case .h1Heading, .h2Heading, .h3Heading, .h5Heading: return .fet
            case .h6Heading, .h7Subheading: return .hal
            }
        }

        var color: UIColor {
            switch self {
            case .h1Heading, .h2Heading, .h3Heading, .h5Heading: return GlobalConstants.TextColors.grayDarker
            case .h6Heading: return GlobalConstants.TextColors.black
            case .h7Subheading: return GlobalConstants.TextColors.grayDark
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

    public static func hFont(for size: HFontSizes) -> UIFont? {
        loadFontIfNeeded(name: size.style.rawValue, fontExtension: "ttf")
        return UIFont(name: size.style.rawValue, size: size.pointSize)
    }

    public enum ArialFontSizes: CGFloat {
        case lead = 18
        case regular = 16
        case small = 14
        case xsmall = 12
        case legal = 10
    }

    public struct ArialFontColors {
        public static let pFont = GlobalConstants.TextColors.grayDark
        public static let aFont = GlobalConstants.TextColors.magenta
    }

    public static func arialFont(size: ArialFontSizes) -> UIFont? {
        return UIFont(name: GlobalConstants.arialName, size: size.rawValue)
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
