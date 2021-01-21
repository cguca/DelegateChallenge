//
//  CashTextFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Cary Guca on 1/19/21.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let formatter = NumberFormatter()
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let currentValue = textField.text {
            
            formatter.numberStyle = .currency
            formatter.maximumFractionDigits = 2
            
            let currentNumberValue = formatter.number(from: currentValue)
            let doubleValue = NSNumber(nonretainedObject: currentNumberValue)
            let intValue = Int(doubleValue * 100)
            var stringValue = String(intValue)
            stringValue += string
            let newDoubleValue = Double(stringValue) ?? 0 / 100
            
            
            
            let formattedString = formatter.string(for: newDoubleValue)
            textField.text = formattedString
            return true
        }
        
        return true
    }
}
