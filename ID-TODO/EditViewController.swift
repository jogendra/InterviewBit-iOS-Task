//
//  EditViewController.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!

    @IBOutlet weak var descriptionTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func deleteTask(_ sender: Any) {

    }


    @IBAction func updateTask(_ sender: Any) {

    }

    @IBAction func doneWithTask(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
