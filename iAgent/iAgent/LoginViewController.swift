//
//  LoginViewController.swift
//  iAgent
//
//  Created by user167032 on 4/11/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
//import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var SignUp: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //when user clicks login button
    @IBAction func onLogIn(_ sender: Any) {
        let username = Username.text!
        let password = Password.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
        { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error:Username and Password not found")
            }
        }
    }
    
    //when user clicks Sign Up
    @IBAction func onSignUp(_ sender: Any) {
    
        //takes user to CreateAccount1ViewController
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
