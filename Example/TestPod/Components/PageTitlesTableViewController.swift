//
//  PageTitlesTableViewController.swift
//  TestPod_Example
//
//  Created by Nathan, Lu on 10/25/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TestPod

class PageTitlesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            return UITableViewCell()
        }
        switch indexPath.row {
            case 0: cell.textLabel?.text = "Page Title"
            case 1: cell.textLabel?.text = "Page Title with header"
            default: break
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emptyTable = UITableViewController()
        switch indexPath.row {
            case 1:
                let tmoNavSubtitle = TMoNavigationController(rootViewController: emptyTable, title: "Line Setup", subtitle: "John's Line")
                splitViewController?.showDetailViewController(tmoNavSubtitle, sender: nil)
            default:
                let tmoNav = TMoNavigationController(rootViewController: emptyTable, title: "All Plans", subtitle: nil)
                splitViewController?.showDetailViewController(tmoNav, sender: nil)
        }
    }

}
