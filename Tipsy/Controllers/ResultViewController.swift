//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Mehmet Sukru Kavak on 13.10.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tipBrain = TipBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        let tip = tipBrain.calculateTip()
        totalLabel.text = String(format: "%.2f", tip)
        settingsLabel.text = "Split between \(tipBrain.splitNumber) people, with \(Int(tipBrain.percentage * 100))% tip."
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    

}
