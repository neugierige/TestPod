//
//  MasterViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class MasterViewController: UITableViewController {

    let componentCategories: [ComponentCategory] = [
        ComponentCategory(categoryName: "Buttons", subtitle: "View that have touch recognizer", storyboardID: "CTAsViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: []),
        ComponentCategory(categoryName: "Icons", subtitle: "Icons and button images, credit card and social media logos", storyboardID: "IconsViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: []),
        ComponentCategory(categoryName: "Page Titles", subtitle: "Navigation Controllers with titles", storyboardID: "PageTitleTableViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: []),
        ComponentCategory(categoryName: "Typography", subtitle: "Heading, paragraph, links", storyboardID: "TypographyViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: [])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        splitViewController?.preferredDisplayMode = .primaryOverlay
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return componentCategories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let componentCategory = componentCategories[indexPath.row]
        cell.textLabel?.text = componentCategory.categoryName
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboardName = componentCategories[indexPath.row].storyboardID
        let componentStoryboard = UIStoryboard(name: storyboardName, bundle: nil)
        pushOrShowStoryboard(componentStoryboard)
    }

    func pushOrShowStoryboard(_ storyboard: UIStoryboard) {
        if let viewController = storyboard.instantiateInitialViewController() {
            pushOrShowViewController(viewController)
        }
    }

    func pushOrShowViewController(_ viewController: UIViewController) {
        if viewController is PageTitlesTableViewController {
             navigationController?.pushViewController(viewController, animated: true)
        } else {
            let navVC = UINavigationController(rootViewController: viewController)
            splitViewController?.showDetailViewController(navVC, sender: nil)
        }

    }
}
