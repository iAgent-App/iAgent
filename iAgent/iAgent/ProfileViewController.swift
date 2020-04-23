//
//  ProfileViewController.swift
//  iAgent
//
//  Created by user167032 on 4/11/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var menuView: UIView!
    @IBAction func onMenuTap(_ sender: Any) {
        if menuView.isHidden {
            menuView.isHidden = false
        } else {
            menuView.isHidden = true
        }
    }
    @IBAction func onSignOut(_ sender: Any) {
        PFUser.logOut()
        if PFUser.current() == nil {
            performSegue(withIdentifier: "logoutSegue", sender: Any?(nilLiteral: ()))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.isHidden = true
        
        // Do any additional setup after loading the view.
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
