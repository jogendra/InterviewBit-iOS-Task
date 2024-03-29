//
//  EditViewController.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

protocol EditVCProtocol: class {
    func didUpdateOrAdd(title: String, desc: String?, index: Int)
}

class EditViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!

    @IBOutlet weak var descriptionTextField: UITextField!

    var fromIndex: Int!

    var taskString: String?

    weak var editDelegate: EditVCProtocol?


    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()
        titleTextField.text = taskString
    }

    func setupNavBar() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneWithTask(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .trash, target: self, action: #selector(deleteTask(_:)))
        self.navigationItem.title = "Edit/Update Task"
    }



    @objc func deleteTask(_ sender: Any) {

    }


    @IBAction func updateTask(_ sender: Any) {
        editDelegate?.didUpdateOrAdd(title: titleTextField.text ?? "", desc: descriptionTextField.text, index: fromIndex)
        self.dismiss(animated: true, completion: nil)
    }

    @objc func doneWithTask(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
