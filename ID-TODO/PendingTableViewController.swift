//
//  PendingTableViewController.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

class PendingTableViewController: UITableViewController {

    var pendingTask = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    @IBAction func addNewTask(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(identifier: "editNavVC")
        self.present(editVC, animated: true)

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pendingCell", for: indexPath) as! PendingCell
        cell.pendingDelegate = self
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

}

extension PendingTableViewController: PendingCellProtocol {
    func didTapEdit(data: String?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(identifier: "editNavVC")
        self.present(editVC, animated: true)
    }
}
