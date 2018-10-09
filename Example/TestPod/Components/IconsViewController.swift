//
//  IconsViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class IconsViewController: UIViewController {

    struct IconImages {
        let id44 = [#imageLiteral(resourceName: "44_Checkmark_Green"), #imageLiteral(resourceName: "44_Checkmark_Magenta")]
        let id45 = [#imageLiteral(resourceName: "45_Info")]
        let id46 = [#imageLiteral(resourceName: "46_Camera_Gray"), #imageLiteral(resourceName: "46_Camera_Magenta")]
        let id47 = [#imageLiteral(resourceName: "47_Reload_Gray"), #imageLiteral(resourceName: "47_Reload_Magenta")]
        let id48 = [#imageLiteral(resourceName: "48_StarFull_Gray"), #imageLiteral(resourceName: "48_StarFull_Magenta")]
        let id49 = [#imageLiteral(resourceName: "49_StarHalfFull_Gray"), #imageLiteral(resourceName: "49_StarHalfFull_Magenta")]
        let id50 = [#imageLiteral(resourceName: "50_StarEmpty_Gray"), #imageLiteral(resourceName: "50_StarEmpty_Magenta")]
        let id51 = [#imageLiteral(resourceName: "51_Add_Gray"), #imageLiteral(resourceName: "51_Add_Magenta")]
        let id52 = [#imageLiteral(resourceName: "52_Subtract_Gray"), #imageLiteral(resourceName: "52_Subtract_Magenta")]
        let id53 = [#imageLiteral(resourceName: "53_Close_Gray"), #imageLiteral(resourceName: "53_Close_Magenta")]
        let id54 = [#imageLiteral(resourceName: "54_Lock")]
        let id55 = [#imageLiteral(resourceName: "55_Unlock")]
        let id56 = [#imageLiteral(resourceName: "56_ManagerLogin_Gray"), #imageLiteral(resourceName: "56_ManagerLogin_Magenta")]
        let id57 = [#imageLiteral(resourceName: "57_Menu_Gray"), #imageLiteral(resourceName: "57_Menu_Magenta")]
        let id58 = [#imageLiteral(resourceName: "58_Error")]
        let id59 = [#imageLiteral(resourceName: "59_Alert")]
        let id60 = [#imageLiteral(resourceName: "60_Scan_Gray"), #imageLiteral(resourceName: "60_Scan_Magenta")]
        let id62 = [#imageLiteral(resourceName: "62_CaretRightIcon_Gray"), #imageLiteral(resourceName: "62_CaretRightIcon_Magenta")]
        let id65 = [#imageLiteral(resourceName: "65_CaretTableDown_Gray"), #imageLiteral(resourceName: "65_CaretTableDown_Magenta")]
        let id66 = [#imageLiteral(resourceName: "66_Search_Gray"), #imageLiteral(resourceName: "66_Search_Magenta")]

        let id35Size82 = #imageLiteral(resourceName: "35_PlayButtonIcon_82")
        let id35Size105 = #imageLiteral(resourceName: "35_PlayButtonIcon_105")
        let id36 = #imageLiteral(resourceName: "36_TMOLogo")
        let id37 = #imageLiteral(resourceName: "37_Score")

        let id236 = #imageLiteral(resourceName: "236_BillIncrease")
        let id237 = #imageLiteral(resourceName: "237_BillDecrease")
        let id240 = #imageLiteral(resourceName: "240_Jump")
        let id242 = #imageLiteral(resourceName: "242_Entrust")
        let id283 = #imageLiteral(resourceName: "283_ArrowLeft")
        let id284 = #imageLiteral(resourceName: "284_ArrowRight")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonImages()
    }

    func setupButtonImages() {

    }

}
