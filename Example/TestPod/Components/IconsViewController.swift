//
//  IconsViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/9/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class IconsViewController: DetailViewController {

    @IBOutlet weak var button1: IconButton!
    @IBOutlet weak var button2: IconButton!
    @IBOutlet weak var button3: IconButton!
    @IBOutlet weak var button4: IconButton!

    @IBOutlet weak var button5: IconButton!
    @IBOutlet weak var button6: IconButton!
    @IBOutlet weak var button7: IconButton!
    @IBOutlet weak var button8: IconButton!

    @IBOutlet weak var button9: IconButton!
    @IBOutlet weak var button10: IconButton!
    @IBOutlet weak var button11: IconButton!
    @IBOutlet weak var button12: IconButton!

    var iconButtons: [IconButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        iconButtons = [
            button1, button2, button3, button4,
            button5, button6, button7, button8,
            button9, button10, button11, button12 ]
        setupIconButtons()
    }

    func setupIconButtons() {
        button1.setImage(IconNames.camera.magenta, for: .normal)
        button2.setImage(IconNames.reload.magenta, for: .normal)
        button3.setImage(IconNames.fullStar.magenta, for: .normal)
        button4.setImage(IconNames.halfStar.magenta, for: .normal)

        button5.setImage(IconNames.emptyStar.magenta, for: .normal)
        button6.setImage(IconNames.plusSign.magenta, for: .normal)
        button7.setImage(IconNames.minusSign.magenta, for: .normal)
        button8.setImage(IconNames.closeSign.magenta, for: .normal)

        button9.setImage(IconNames.managerLogin.magenta, for: .normal)
        button10.setImage(IconNames.menu.magenta, for: .normal)
        button11.setImage(IconNames.caretLine.magenta, for: .normal)
        button12.setImage(IconNames.caretSolid.magenta, for: .normal)
        iconButtons.forEach { $0.isEnabled = true }
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        iconButtons.forEach {
            $0.isEnabled = sender.isOn ? true : false
        }
    }

}
