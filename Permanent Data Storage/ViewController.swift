//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Adam Moore on 3/21/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nameGlobal = ""
    var nineGlobal = 89
    var incrementingNumber = 1
    var temporaryArray = [Int]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set("Rob", forKey: "name")
        UserDefaults.standard.set(9, forKey: "nine")
        
        if let name = UserDefaults.standard.object(forKey: "name") as? String, let nine = UserDefaults.standard.object(forKey: "nine") as? Int {
            nameGlobal = name
            nineGlobal = nine
        } else {
            nameGlobal = "Adam"
            nineGlobal = 29
        }
        
        print(nameGlobal)
        print(nineGlobal + 10)

        // Phone Number Loadings
        phoneNumberLabel.text = ""
        
        
        // Testing Array Loadings
        UserDefaults.standard.set([], forKey: "array")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Phone number section
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBAction func savePhoneNumberButton(_ sender: UIButton) {
        UserDefaults.standard.set(phoneNumberTextField.text, forKey: "PhoneNumber")
        
        
        
        // Array saving test
        temporaryArray.append(incrementingNumber)
        UserDefaults.standard.set(temporaryArray, forKey: "array")
        if let updatedArray = UserDefaults.standard.object(forKey: "array") as? [Int] {
            print(updatedArray)
        }
        incrementingNumber += 1
        
        
        
    }
    @IBAction func showPhoneNumberButton(_ sender: UIButton) {
        
        if let savedPhoneNumberObject = UserDefaults.standard.object(forKey: "PhoneNumber") as? String {
            phoneNumberLabel.text = savedPhoneNumberObject
        } else {
            phoneNumberLabel.text = "No phone number saved"
        }
        
        
        // Array testing
        if let updatedArray = UserDefaults.standard.object(forKey: "array") as? [Int] {
            print(updatedArray)
        }
        
        
        
        
    }
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    
    
    
    
    
    
    


}










