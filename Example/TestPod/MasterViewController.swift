//
//  MasterViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/8/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    let components: [Component] = [
        Component(name: "CTAs", patternID: "17", storyboardID: nil),
        Component(name: "Secondary CTA", patternID: "18", storyboardID: nil)]

    let componentCategories: [ComponentCategory] = [
        ComponentCategory(categoryName: "Buttons", subtitle: "View that have touch recognizer", storyboardID: "CTAsViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: []),
        ComponentCategory(categoryName: "Typography", subtitle: "Heading, paragraph, links", storyboardID: "TypographyViewController", usageDescription: "lorem ipsem foo foo", bestPractices: "do this, not that", components: [])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        splitViewController?.preferredDisplayMode = .allVisible
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        if let componentViewController = componentStoryboard.instantiateInitialViewController() {
            splitViewController?.showDetailViewController(componentViewController, sender: nil)
        } else {
            print("no VC for \(storyboardName)")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
