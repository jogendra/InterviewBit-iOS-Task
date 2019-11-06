//
//  PendingCell.swift
//  ID-TODO
//
//  Created by JOGENDRA on 06/11/19.
//  Copyright © 2019 Jogendra Singh. All rights reserved.
//

import UIKit

protocol PendingCellProtocol: class {
    func didTapEdit(data: String?)
}

class PendingCell: UITableViewCell {

    @IBOutlet weak var pendingTitleLabel: UILabel!

    weak var pendingDelegate: PendingCellProtocol?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func doneButtonTapped(_ sender: Any) {

    }

    @IBAction func editTask(_ sender: Any) {
        pendingDelegate?.didTapEdit(data: pendingTitleLabel.text)
    }


}
