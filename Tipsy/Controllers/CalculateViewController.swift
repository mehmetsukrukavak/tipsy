//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPtcButton: UIButton!
    @IBOutlet weak var tenPtcButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    
    var tipBrain = TipBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        tipBrain.splitNumber = Int(sender.value)
        splitNumberLabel.text = String(tipBrain.splitNumber)
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        unSelectAll()
        billTextField.endEditing(true)
        sender.isSelected = true
        
        let percentageValue = sender.currentTitle!.dropLast()
        let percentage = Float(percentageValue)! / 100
        
        tipBrain.percentage = percentage
        //print(percentage)
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let bill = billTextField.text!
        if  bill != "" {
            tipBrain.bill = Float(bill)!
        }
        print(tipBrain.calculateTip())
        /*
        print(tipBrain.bill)
        print(tipBrain.percentage)
        print(tipBrain.splitNumber)
         */
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    func unSelectAll(){
        zeroPtcButton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            //If the currently triggered segue is the "goToResults" segue.
            if segue.identifier == "goToResult" {
                
                
                let destinationVC = segue.destination as! ResultViewController
                
               
                destinationVC.tipBrain = tipBrain
                
            }
        }
    
   
}

