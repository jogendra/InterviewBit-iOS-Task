//
//  CompletedCell.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

class CompletedCell: UITableViewCell {


    @IBOutlet weak var doneTaskLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func unMarkTask(_ sender: Any) {

    }

    
    @IBAction func editTask(_ sender: Any) {
    }
    
}
