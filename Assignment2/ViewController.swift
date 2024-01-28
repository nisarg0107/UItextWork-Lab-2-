//
//  ViewController.swift
//  Assignment2
//
//  Created by user238292 on 1/23/24.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var fname: UITextField!
    
    @IBOutlet weak var lname: UITextField!
    
    @IBOutlet weak var country: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var displayArea: UITextView!
    
    @IBOutlet weak var responseArea: UILabel!
    
    
    @IBAction func addInfo(_ sender: Any) {
        displayArea.text = "Full Name : \(fname.text!) \(lname.text!) \nCountry : \(country.text!) \nAge : \(age.text!)"

    }
    
    
    @IBAction func submitInfo(_ sender: Any) {
        
        if (fname.text!.isEmpty || lname.text!.isEmpty || country.text!.isEmpty || age.text!.isEmpty){
          
            responseArea.text = "Complete the missing Info!"
        }
        else{
            
           
            responseArea.text = "Successfully submitted!"
            displayArea.text = "Full Name : \(fname.text!) \(lname.text!) \nCountry : \(country.text!) \nAge : \(age.text!)"
        }
    }
    
    
    @IBAction func clearInfo(_ sender: Any) {
        fname.text!.removeAll()
        lname.text!.removeAll()
        country.text!.removeAll()
        age.text!.removeAll()
        displayArea.text!.removeAll()
        responseArea.text!.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

