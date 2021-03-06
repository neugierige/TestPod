//
//  Component.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

// Models for first-level objects
struct ComponentCategory {
    var categoryName: String
    var subtitle: String?
    var storyboardID: String
    var usageDescription: String
    var bestPractices: String
    var components: [Component]
}

// Models for components themselves
struct Component {
    var name: String
    var patternID: String
    var storyboardID: String?
}
