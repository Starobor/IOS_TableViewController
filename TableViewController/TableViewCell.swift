//
//  TableViewCell.swift
//  TableViewController
//
//  Created by Citizen on 9/17/18.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func refresh(_ model: Model) {
        nameLabel.text = model.name
        detailLabel.text = model.prof
    }

}
