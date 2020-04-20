//
//  AthleteSignupViewController.swift
//  iAgent
//
//  Created by Daniel Hart on 4/9/20.
//  Copyright © 2020 Daniel Hart. All rights reserved.
//

import UIKit

class AthleteSignupViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    

    @IBOutlet weak var proCollegeChoice: UISegmentedControl!
    @IBOutlet weak var sportTextField: UITextField!
    @IBOutlet weak var sportPicker: UIPickerView!
    @IBOutlet weak var heightFieldFeet: UITextField!
    @IBOutlet weak var heightFieldInch: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var prevClubField: UITextField!
    
    var sports = ["-- Choose Sport --", "Basketball", "Football", "Soccer", "Track & Field"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sportPicker.delegate = self
        sportPicker.dataSource = self
        sportTextField.delegate = self
        
        sportPicker.isHidden = true
        sportTextField.text = sports[0]
        
        // Do any additional setup after loading the view.
    }
    
    // returns the number of 'columns' to display.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }


    // returns the # of rows in each component..
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return sports.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sports[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        sportTextField.text = sports[row]
        sportPicker.isHidden = true;
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        sportPicker.isHidden = false
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
