//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPtcButton: UIButton!
    
    @IBOutlet weak var tenPtcButton: UIButton!
    
    @IBOutlet weak var twentyPtcButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        print(sender.currentTitle!)
    }
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
    }
}

