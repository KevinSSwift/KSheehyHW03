//
//  ViewController.swift
//  $125 Million App
//
//  Created by Kevin Sheehy on 2/4/17.
//  Copyright © 2017 Kevin Sheehy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//MARK: IBOutlets
   
    @IBOutlet weak var convertedUnitsLabel: UILabel!
  
    @IBOutlet weak var userInputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: IBActions
    
    @IBAction func converyButton(_ sender: UIButton) {
        
        if let miles = Double(userInputField.text!) {
            let km = miles * 1.6
            convertedUnitsLabel.text = "\(miles) miles = \(km) km"
        } else {
            convertedUnitsLabel.text = ""
            
            let alertContoller = UIAlertController(title: "Entry Error", message: "Please enter a valid number, not an empty string, no commas, symbols, or non-numeric characters", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertContoller.addAction(defaultAction)
            
            present(alertContoller, animated: true, completion: nil)
        
        }
    }
}
