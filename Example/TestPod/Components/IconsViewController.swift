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

    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var button44: UIButton!
    @IBOutlet weak var button45: UIButton!
    @IBOutlet weak var button46: UIButton!
    @IBOutlet weak var button47: UIButton!

    @IBOutlet weak var button48: UIButton!
    @IBOutlet weak var button49: UIButton!
    @IBOutlet weak var button50: UIButton!
    @IBOutlet weak var button51: UIButton!

    @IBOutlet weak var button52: UIButton!
    @IBOutlet weak var button53: UIButton!
    @IBOutlet weak var button54: UIButton!
    @IBOutlet weak var button55: UIButton!

    @IBOutlet weak var button56: UIButton!
    @IBOutlet weak var button57: UIButton!
    @IBOutlet weak var button58: UIButton!
    @IBOutlet weak var button59: UIButton!

    @IBOutlet weak var button60: UIButton!
    @IBOutlet weak var button62: UIButton!
    @IBOutlet weak var button65: UIButton!
    @IBOutlet weak var button66: UIButton!

    @IBOutlet weak var button35S: UIButton!
    @IBOutlet weak var button35L: UIButton!
    @IBOutlet weak var button36: UIButton!
    @IBOutlet weak var button37: UIButton!

    @IBOutlet weak var button236: UIButton!
    @IBOutlet weak var button237: UIButton!
    @IBOutlet weak var button283: UIButton!
    @IBOutlet weak var button284: UIButton!
    @IBOutlet weak var button240: UIButton!
    @IBOutlet weak var button242: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonImages()
    }

    func setupButtonImages() {
        testButton.imageView?.image = IconNames.checkmarkMagenta
//        button44.imageView?.image = IconNames.checkmarkMagenta
//        button45.imageView?.image = IconImages.id45.last
//        button46.imageView?.image = IconImages.id46.last
//        button47.imageView?.image = IconImages.id47.last
//        button48.imageView?.image = IconImages.id48.last
//        button49.imageView?.image = IconImages.id49.last
    }

}
