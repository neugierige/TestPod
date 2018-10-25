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

    @IBOutlet weak var button13: IconButton!
    @IBOutlet weak var button14: IconButton!

    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var button17: UIButton!
    @IBOutlet weak var button18: UIButton!

    @IBOutlet weak var button19: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button21: UIButton!
    @IBOutlet weak var image22: UIImageView!

    @IBOutlet weak var image23: UIImageView!
    @IBOutlet weak var image24: UIImageView!
    @IBOutlet weak var image25: UIImageView!
    @IBOutlet weak var image26: UIImageView!

    @IBOutlet weak var button27: UIButton!

    @IBOutlet weak var image29: UIImageView!
    @IBOutlet weak var image30: UIImageView!
    @IBOutlet weak var image31: UIImageView!
    @IBOutlet weak var image32: UIImageView!

    var iconButtons: [IconButton] = []
    var buttons: [UIButton] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        iconButtons = [
            button1, button2, button3, button4,
            button5, button6, button7, button8,
            button9, button10, button11, button12,
            button13, button14
        ]
        buttons = [
            button15, button16, button17, button18,
            button19, button20, button21
        ]
        setupIconButtons()
        setupButtonsAndImages()
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

        button13.setImage(IconNames.scan.magenta, for: .normal)
        button14.setImage(IconNames.search.magenta, for: .normal)
        iconButtons.forEach { $0.isEnabled = true }
    }

    func setupButtonsAndImages() {
        button15.setImage(IconNames.checkmark.magenta?.withRenderingMode(.alwaysOriginal), for: .normal)
        button16.setImage(IconNames.checkmark.green?.withRenderingMode(.alwaysOriginal), for: .normal)
        button17.setImage(IconNames.error?.withRenderingMode(.alwaysOriginal), for: .normal)
        button18.setImage(IconNames.alert?.withRenderingMode(.alwaysOriginal), for: .normal)

        button19.setImage(IconNames.lockOpen?.withRenderingMode(.alwaysOriginal), for: .normal)
        button20.setImage(IconNames.lockClosed?.withRenderingMode(.alwaysOriginal), for: .normal)
        button21.setImage(IconNames.info?.withRenderingMode(.alwaysOriginal), for: .normal)
        image22.image = IconNames.mapMarker?.withRenderingMode(.alwaysOriginal)

        image23.image = IconNames.thinArrow.up?.withRenderingMode(.alwaysOriginal)
        image24.image = IconNames.thinArrow.down?.withRenderingMode(.alwaysOriginal)
        image25.image = IconNames.thinArrow.left?.withRenderingMode(.alwaysOriginal)
        image26.image = IconNames.thinArrow.right?.withRenderingMode(.alwaysOriginal)

        button27.setImage(IconNames.playButton.small?.withRenderingMode(.alwaysOriginal), for: .normal)
        button27.imageView?.contentMode = .scaleAspectFit

        image29.image = IconNames.tmoLogo?.withRenderingMode(.alwaysOriginal)
        image30.image = IconNames.score?.withRenderingMode(.alwaysOriginal)
        image31.image = IconNames.jump?.withRenderingMode(.alwaysOriginal)
        image32.image = IconNames.entrust?.withRenderingMode(.alwaysOriginal)
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        iconButtons.forEach {
            $0.isEnabled = sender.isOn ? true : false
            $0.alpha = 1.0
        }
    }

}
