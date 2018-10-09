//
//  Icons+Logos.swift
//  TestPod
//
//  Created by Nathan, Lu on 10/9/18.
//

import Foundation

public class Icon {
    private static var internalBundle: Bundle?

    public static var bundle: Bundle {
        if nil == Icon.internalBundle {
            Icon.internalBundle = Bundle(for: Icon.self)
            let url = Icon.internalBundle!.resourceURL!
            let b = Bundle(url: url.appendingPathComponent("com.cosmicmind.material.icons.bundle"))
            if let v = b {
                Icon.internalBundle = v
            }
        }
        return Icon.internalBundle!
    }

    public static func icon(_ name: String) -> UIImage? {
        return UIImage(named: name, in: bundle, compatibleWith: nil)?.withRenderingMode(.alwaysTemplate)
    }
}

public struct IconNames {
    public static var checkmarkGreen = Icon.icon("44_Checkmark_Green")
    public static var checkmarkMagenta = Icon.icon("44_Checkmark_Magenta")

//    public static let id45 = [#imageLiteral(resourceName: "45_Info")]
//    public static let id46 = [#imageLiteral(resourceName: "46_Camera_Gray"), #imageLiteral(resourceName: "46_Camera_Magenta")]
//    public static let id47 = [#imageLiteral(resourceName: "47_Reload_Gray"), #imageLiteral(resourceName: "47_Reload_Magenta")]
//    public static let id48 = [#imageLiteral(resourceName: "48_StarFull_Gray"), #imageLiteral(resourceName: "48_StarFull_Magenta")]
//    public static let id49 = [#imageLiteral(resourceName: "49_StarHalfFull_Gray"), #imageLiteral(resourceName: "49_StarHalfFull_Magenta")]
//    public static let id50 = [#imageLiteral(resourceName: "50_StarEmpty_Gray"), #imageLiteral(resourceName: "50_StarEmpty_Magenta")]
//    public static let id51 = [#imageLiteral(resourceName: "51_Add_Gray"), #imageLiteral(resourceName: "51_Add_Magenta")]
//    public static let id52 = [#imageLiteral(resourceName: "52_Subtract_Gray"), #imageLiteral(resourceName: "52_Subtract_Magenta")]
//    public static let id53 = [#imageLiteral(resourceName: "53_Close_Gray"), #imageLiteral(resourceName: "53_Close_Magenta")]
//    public static let id54 = [#imageLiteral(resourceName: "54_Lock")]
//    public static let id55 = [#imageLiteral(resourceName: "55_Unlock")]
//    public static let id56 = [#imageLiteral(resourceName: "56_ManagerLogin_Gray"), #imageLiteral(resourceName: "56_ManagerLogin_Magenta")]
//    public static let id57 = [#imageLiteral(resourceName: "57_Menu_Gray"), #imageLiteral(resourceName: "57_Menu_Magenta")]
//    public static let id58 = [#imageLiteral(resourceName: "58_Error")]
//    public static let id59 = [#imageLiteral(resourceName: "59_Alert")]
//    public static let id60 = [#imageLiteral(resourceName: "60_Scan_Gray"), #imageLiteral(resourceName: "60_Scan_Magenta")]
//    public static let id62 = [#imageLiteral(resourceName: "62_CaretRightIcon_Gray"), #imageLiteral(resourceName: "62_CaretRightIcon_Magenta")]
//    public static let id65 = [#imageLiteral(resourceName: "65_CaretTableDown_Gray"), #imageLiteral(resourceName: "65_CaretTableDown_Magenta")]
//    public static let id66 = [#imageLiteral(resourceName: "66_Search_Gray"), #imageLiteral(resourceName: "66_Search_Magenta")]
//
//    let id35Size82 = #imageLiteral(resourceName: "35_PlayButtonIcon_82")
//    let id35Size105 = #imageLiteral(resourceName: "35_PlayButtonIcon_105")
//    let id36 = #imageLiteral(resourceName: "36_TMOLogo")
//    let id37 = #imageLiteral(resourceName: "37_Score")
//
//    let id236 = #imageLiteral(resourceName: "236_BillIncrease")
//    let id237 = #imageLiteral(resourceName: "237_BillDecrease")
//    let id283 = #imageLiteral(resourceName: "283_ArrowLeft")
//    let id284 = #imageLiteral(resourceName: "284_ArrowRight")
//
//    let id240 = #imageLiteral(resourceName: "240_Jump")
//    let id242 = #imageLiteral(resourceName: "242_Entrust")
}


