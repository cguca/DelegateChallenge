//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Cary Guca on 1/18/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipcodeField: UITextField!
    @IBOutlet weak var cashField: UITextField!
    @IBOutlet weak var lockField: UITextField!
    @IBOutlet weak var lockSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let cashDelegate = CashTextFieldDelegate()
    let lockableDelegate = self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        zipcodeField.delegate = zipCodeDelegate
        cashField.delegate = cashDelegate
        lockField.delegate = self
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if lockSwitch.isOn == true {
            textField.isEnabled = true
            return true
        } else {
            textField.resignFirstResponder()
            textField.isEnabled = false
            return false
        }
    }
    
}

