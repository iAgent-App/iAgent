//
//  CustomCell3.swift
//  iAgent
//
//  Created by Daniel Hart on 5/7/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit

class CustomCell3: UITableViewCell {

    @IBOutlet weak var sportLabel: UILabel!
    @IBOutlet weak var aspirationLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var clubLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit() {
        
    }
    
}
