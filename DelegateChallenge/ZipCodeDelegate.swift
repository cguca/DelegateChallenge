//
//  ZipCodeDelegate.swift
//  DelegateChallenge
//
//  Created by Cary Guca on 1/19/21.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let allowedCharacters = NSCharacterSet(charactersIn: "1234567890")
        let maxLength:Int = 5
        
        if string == "" {
            return true
        }
        
        if let _ = string.rangeOfCharacter(from: allowedCharacters as CharacterSet) {
            if textField.text?.count ?? 0 < maxLength {
                return true
            }
        }
        return false
    }
}
