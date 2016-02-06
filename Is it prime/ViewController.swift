//
//  ViewController.swift
//  Is it prime
//
//  Created by miguel hernandez on 2/6/16.
//  Copyright © 2016 com.securecodetips.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        
        
     if  let number = Int(numberTextField.text!){
        

      var isPrime = true
      if number == 1 {
      isPrime = false
        }
        if number != 2 && number != 1 {
            for var i = 2; i < number; i++ {
                if number % i == 0 {
                isPrime = false
                
                }
            }
        
        }
        if !isPrime {
        resultLabel.text="\(number) is not prime"
        }
        else{
        resultLabel.text="\(number) is prime"}
    }
     else
     {resultLabel.text="Please enter a number"}
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

