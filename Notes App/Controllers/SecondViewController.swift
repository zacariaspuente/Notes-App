//
//  SecondViewController.swift
//  Notes App
//
//  Created by Zacarias Puente on 08/03/2022.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    var titleText: String?
    
    @IBOutlet weak var noteTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        noteTextField.delegate = self
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) -> String {
       let titleText = noteTextField.text!
       // print(titleText)
        return titleText
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("enter")
        noteTextField.endEditing(true)
        let titleText = noteTextField.text!
         print(titleText)
        
        return true
        
    }
    

}


