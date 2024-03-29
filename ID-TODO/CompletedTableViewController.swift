//
//  CompletedTableViewController.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

class CompletedTableViewController: UITableViewController {

    var completedTask = [String]() {
        didSet {
            self.tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return completedTask.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "compCell", for: indexPath) as! CompletedCell
        cell.cellDelegate = self
        cell.index = indexPath.row
        cell.doneTaskLabel.text = completedTask[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

}

extension CompletedTableViewController: CompletedCellProtocol {

    func didTapEdit(index: Int, textString: String?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(identifier: "editVC") as! EditViewController
        editVC.fromIndex = index
        editVC.taskString = textString
        editVC.editDelegate = self
        let navVC = UINavigationController(rootViewController: editVC)
        self.present(navVC, animated: true)
    }
}

extension CompletedTableViewController: EditVCProtocol {
    func didUpdateOrAdd(title: String, desc: String?, index: Int) {
        completedTask[index] = title
    }
}
