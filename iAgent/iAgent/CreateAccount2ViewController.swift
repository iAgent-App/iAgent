//
//  CreateAccount2ViewController.swift
//  iAgent
//
//  Created by Daniel Hart on 4/9/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit
import Parse

class CreateAccount2ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var genderPick: UISegmentedControl!
    @IBOutlet weak var otherGenderChoice: UITextField!
    @IBOutlet weak var selectAccountField: UITextField!
    @IBOutlet weak var accountPicker: UIPickerView!
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var countryOfBirth: UITextField!
    @IBOutlet weak var cityOfResidence: UITextField!
    
    let user = PFUser()
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "\(chosenType)Segue", sender: nil)
        user["account type"] = selectAccountField.text
    }
    
    var accountTypes = ["Athlete", "Coach/Agent"]
    var chosenType = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        switch genderPick.selectedSegmentIndex {
        case 0:
            user["gender"] = "Male"
        case 1:
            user["gender"] = "Female"
        default:
            user["gender"] = otherGenderChoice.text!
        }
        
        user["date of birth"] = dateOfBirth.text
        user["country of birth"] = countryOfBirth.text
        user["city of residence"] = cityOfResidence.text
        
        selectAccountField.delegate = self
        accountPicker.delegate = self
        accountPicker.dataSource = self
        
        accountPicker.isHidden = true
        selectAccountField.text = " -- Account Type --"

        // Do any additional setup after loading the view.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return accountTypes.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return accountTypes[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        selectAccountField.text = accountTypes[row]
        accountPicker.isHidden = true;
        chosenType = accountTypes[row]
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        accountPicker.isHidden = false
        return false
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
