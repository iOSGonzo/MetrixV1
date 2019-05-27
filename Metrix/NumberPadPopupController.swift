//
//  NumberPadController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/23/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class NumberPadPopupController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    @IBOutlet weak var numPadLabel: UILabel!
    
    var labelNumber: String = "$"
    var labelNumber2: String = ""
    var labelNumberDouble: Double = 0.00
    
    
    var ebayFeeDouble: Double = 0.00
    var ebayFeeString: String = "$0.00"
    
    var stockXFeeDouble: Double = 0.00
    var stockXFeeString: String = "$0.00"
    
    var mercariFeeDouble: Double = 0.00
    var mercariFeeString: String = "$0.00"
    
    var bumpFeeDouble: Double = 0.00
    var bumpFeeString: String = "$0.00"
    
    @IBAction func backspace(_ sender: UIButton) {
        if labelNumber.count > 0{
            labelNumber = String(labelNumber.dropLast())
            numPadLabel.text = labelNumber
            labelNumber2 = "$" + labelNumber
            labelNumberDouble = Double(labelNumber)!
            calculateFees()
        }
        else{
            return
        }
    }
    
    @IBAction func numPad(_ sender: UIButton) {
        if labelNumber.count >= 0 && labelNumber.count < 4{
            labelNumber = numPadLabel.text! + String(sender.tag - 1)
            numPadLabel.text = labelNumber
            labelNumber2 = "$" + labelNumber
            labelNumberDouble = Double(labelNumber)!
            calculateFees()
        }
        else{
            return
        }
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name.savePriceEntered, object: self)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func calculateFees(){
        ebayFeeDouble = labelNumberDouble * 0.90
        ebayFeeDouble = ebayFeeDouble.roundToDecimal(2)
        ebayFeeString = "$" + String(ebayFeeDouble)
        
        stockXFeeDouble = labelNumberDouble * 0.875
        stockXFeeDouble = stockXFeeDouble.roundToDecimal(2)
        stockXFeeString = "$" + String(stockXFeeDouble)
        
        mercariFeeDouble = labelNumberDouble * 0.90
        mercariFeeDouble = mercariFeeDouble.roundToDecimal(2)
        mercariFeeString = "$" + String(mercariFeeDouble)
        
        bumpFeeDouble = labelNumberDouble * 0.919
        bumpFeeDouble = bumpFeeDouble.roundToDecimal(2)
        bumpFeeString = "$" + String(bumpFeeDouble)
        
    }

}

extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}

