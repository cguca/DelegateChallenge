//
//  LockableTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Cary Guca on 1/19/21.
//

import Foundation
import UIKit

class LockableTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
}
