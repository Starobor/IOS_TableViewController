//
//  TableViewController.swift
//  TableViewController
//
//  Created by Citizen on 9/17/18.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var isPushSwitch: UISwitch!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    
    let userDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let name = userDefaults.object(forKey: "name") {
            nameTextField.text = name as? String
        }
        
        if let last = userDefaults.object(forKey: "lastName") {
            lastNameTextField.text = last as? String
        }
        
        if let isSwitch = userDefaults.object(forKey: "switch") {
            isPushSwitch.isOn = isSwitch as! Bool
        }
        
        if let gender = userDefaults.object(forKey: "segment") {
            genderSegment.selectedSegmentIndex = gender as! Int
        }

    }
    
    @IBAction func saveButton(_ sender: UIButton) {
        userDefaults.setValue(nameTextField.text, forKey: "name")
        userDefaults.setValue(lastNameTextField.text, forKey: "lastName")
        userDefaults.set(isPushSwitch.isOn, forKey: "switch")
        userDefaults.set(genderSegment.selectedSegmentIndex, forKey: "segment")
        lastNameTextField.resignFirstResponder()
    }
    
}
