//
//  PendingTableViewController.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

class PendingTableViewController: UITableViewController {

    var pendingTask = [String]() {
        didSet {
            self.tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func addNewTask(_ sender: Any) {
        let addTaskController = UIAlertController(title: "Add a New Task!", message: nil, preferredStyle: .alert)
        addTaskController.addTextField(configurationHandler: { (textField: UITextField) in
            textField.placeholder = "Add task here.."
        })
        let alertAction = UIAlertAction(title: "Add Task", style: .default, handler: { alter in
            let taskTextField = addTaskController.textFields![0] as UITextField
            if let task = taskTextField.text {
                self.pendingTask.append(task)
            }
            addTaskController.dismiss(animated: true, completion: nil)
        })
        let cancle = UIAlertAction(title: "Cancle", style: .cancel, handler: nil)
        addTaskController.addAction(alertAction)
        addTaskController.addAction(cancle)
        self.present(addTaskController, animated: true)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pendingTask.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pendingCell", for: indexPath) as! PendingCell
        cell.pendingDelegate = self
        cell.pendingTitleLabel.text = pendingTask[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

}

extension PendingTableViewController: PendingCellProtocol {
    func didTapEdit(data: String?) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let editVC = storyboard.instantiateViewController(identifier: "editVC")
        let navVC = UINavigationController(rootViewController: editVC)
        self.present(navVC, animated: true)
    }
}

extension PendingTableViewController: EditVCProtocol {
    func didUpdateOrAdd(title: String, desc: String?) {
        pendingTask.append(title)
    }
}
