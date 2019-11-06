//
//  CompletedCell.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

protocol CompletedCellProtocol: class {
    func didTapEdit(index: Int, textString: String?)
}

class CompletedCell: UITableViewCell {

    weak var cellDelegate: CompletedCellProtocol?

    var index: Int!


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
        cellDelegate?.didTapEdit(index: index, textString: doneTaskLabel.text)
    }

}
