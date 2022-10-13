//
//  Tip.swift
//  Tipsy
//
//  Created by Mehmet Sukru Kavak on 13.10.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct TipBrain {
    var bill = Float(0.0)
    var percentage = Float(0.0)
    var splitNumber = 1
    
    var result = "0.0";
    
    mutating func calculateTip() -> Float {
        
        let result = (bill * percentage) / Float(splitNumber)
        
        return result
    }
}
