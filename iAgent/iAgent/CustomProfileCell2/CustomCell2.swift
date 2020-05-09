//
//  CustomCell2.swift
//  iAgent
//
//  Created by Daniel Hart on 5/7/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit

class CustomCell2: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
