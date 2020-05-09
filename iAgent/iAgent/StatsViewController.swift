//
//  StatsViewController.swift
//  iAgent
//
//  Created by user167032 on 5/3/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    @IBOutlet weak var addStatButton: UIButton!
    @IBOutlet weak var awardName: UILabel!
    @IBOutlet weak var awardNameText: UITextField!
    @IBOutlet weak var awardDetails: UILabel!
    @IBOutlet weak var awardDetailsText: UITextField!
    
    var lastYPosition: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStatButtonClicked(_ sender: Any) {
        let contentView = UIView()
        addNewStat(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contentView)
        
        //could add size and position contraints to content view - is it needed?
        
        //update last Y position to have the gaps betweens views to be 10
        lastYPosition += 40
    }
    
    func addNewStat(_ contentView: UIView) {
        //add award label and text field
        let alabel = UILabel()
        alabel.text = "Award:"
        let atextField = UITextField()
        atextField.text = awardDetailsText.text
        
        //add award details label and text field
        let dlabel = UILabel()
        dlabel.text = "Details:"
        let dtextField = UITextField()
        dtextField.text = awardDetailsText.text
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
