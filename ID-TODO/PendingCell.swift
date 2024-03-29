//
//  PendingCell.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

protocol PendingCellProtocol: class {
    func didTapEdit(for index: Int, taskString: String?)
    func didMarkedTask(index: Int, taskString: String?)
}

class PendingCell: UITableViewCell {

    @IBOutlet weak var pendingTitleLabel: UILabel!

    weak var pendingDelegate: PendingCellProtocol?

    var index: Int!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func doneButtonTapped(_ sender: Any) {
        pendingDelegate?.didMarkedTask(index: index, taskString: pendingTitleLabel.text)
    }

    @IBAction func editTask(_ sender: Any) {
        pendingDelegate?.didTapEdit(for: index, taskString: pendingTitleLabel.text)
    }


}
