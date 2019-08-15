//
//  CustomTableViewCell.swift
//  CustomUITableView
//
//  Created by Mohamed on 8/15/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var labelMsg: UILabel!
    @IBOutlet weak var imag: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
