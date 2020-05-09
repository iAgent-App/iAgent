//
//  ProfileViewController.swift
//  iAgent
//
//  Created by user167032 on 4/11/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var statsButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var menuView: UIView!
    @IBAction func onMenuTap(_ sender: Any) {
        if menuView.isHidden {
            menuView.isHidden = false
        } else {
            menuView.isHidden = true
        }
    }
    
    @IBAction func onSwitchTableView(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            
            tableView.reloadData()
        case 1:
            
            tableView.reloadData()
        default:
            
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.isHidden = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib1 = UINib(nibName: "customCell1", bundle: nil)
        tableView.register(nib1, forCellReuseIdentifier: "customCell1")
        let nib2 = UINib(nibName: "customCell2", bundle: nil)
        tableView.register(nib2, forCellReuseIdentifier: "customCell2")
        let nib3 = UINib(nibName: "customCell3", bundle: nil)
        tableView.register(nib3, forCellReuseIdentifier: "customCell3")
        
        //make stat button appear vertical
        statsButton.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
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
