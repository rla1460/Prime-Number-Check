//
//  ViewController.swift
//  Prime Number Check
//
//  Created by D7703_07 on 2018. 3. 29..
//  Copyright © 2018년 D7703_07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textF: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textF.delegate = self
    }

    
    @IBAction func CheckBtn(_ sender: Any) {
        let number = Int(textF.text!)
        var isPrime = true
        
        if number == 1{
            isPrime = false
        }
        
        if number != 2 && number != 1 {
            for i in 2 ..< number! {
                if number! % i == 0{
                    isPrime = false
                }
            }
        }
        if isPrime == true{
            lbl.text = "Prime Number"
        }else{
            lbl.text = "Not Prime Number"
        }
    }
    
    @IBAction func ResetBtn(_ sender: Any) {
        textF.text = " "
        lbl.text = " "
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

