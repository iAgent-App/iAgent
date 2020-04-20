//
//  CreateAccount1ViewController.swift
//  iAgent
//
//  Created by Daniel Hart on 4/9/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class CreateAccount1ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBAction func onSignup(_ sender: Any) {
        var user = PFUser()
        user.username = usernameField.text!
        user.password = passwordField.text!
        user.email = emailField.text!
        user["firstname"] = firstNameField.text!
        user["lastname"] = lastNameField.text!
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "segue", sender: Any?.self)
            } else {
                print("Error signing up user")
            }
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
