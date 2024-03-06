//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var twoButtonTip: UIButton!
    @IBOutlet weak var peopleNumber: UILabel!
    
    
    var tip = 0.10
    var numberOfPeople = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billTextField.endEditing(true)
    }
    override func viewDidAppear(_ animated: Bool) {
         super.viewDidAppear(animated)
         print("viewDidAppear")
     }
     override func viewIsAppearing(_ animated: Bool) {
         super.viewIsAppearing(animated)
         print("viewIsAppearing")
     }
     
     override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
         print("viewWillAppear")
     }
     override func viewDidDisappear(_ animated: Bool) {
         super.viewDidDisappear(animated)
         print("viewDidDisappear")
     }
     override func viewWillDisappear(_ animated: Bool) {
         super.viewWillDisappear(animated)
         print("viewWillDisappear")
     }
    @IBAction func stipperPressed(_ sender: UIStepper) {
        
        billTextField.endEditing(true)

        
        peopleNumber.text =  String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func tipValue(_ sender: UIButton) {
        
        billTextField.endEditing(true)

        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twoButtonTip.isSelected = false
               sender.isSelected = true
        
        let tipTitle = sender.currentTitle!
        let tipValue = String (tipTitle.dropLast())
        let finalTipValue = Double(tipValue)!
        tip = finalTipValue / 100
        
   
    }
    
    @IBAction func calculateTheBill(_ sender: UIButton) {
        
        let textBill = Double(billTextField.text ?? "0.0")
        
        billTotal = textBill ?? 0.0
        
    let calculater =  (billTotal * (tip + 1 )) / Double(numberOfPeople )
        
        finalResult = String(format:"%.2f" , calculater)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
          destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
           destinationVC.split = numberOfPeople
        }
    }
    
    
}

