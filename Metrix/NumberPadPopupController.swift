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
    
    @IBOutlet weak var numPadLabel: UILabel!
    
    var labelNumber: String = "$"
    var labelNumber2: String = ""
    
    
    @IBAction func backspace(_ sender: UIButton) {
        if labelNumber.count > 0{
            labelNumber = String(labelNumber.dropLast())
            numPadLabel.text = labelNumber
        }
        else{
            return
        }
    }
    
    @IBAction func numPad(_ sender: UIButton) {
        if labelNumber.count >= 0 && labelNumber.count < 4{
            labelNumber = numPadLabel.text! + String(sender.tag - 1)
            numPadLabel.text = labelNumber
            //print(sellingForLabel.text)
            print("updating fees")
            print(labelNumber)
            //            sellingForLabel.text = labelNumber
        }
        else{
            return
        }
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name.savePriceEntered, object: self)
        self.dismiss(animated: true, completion: nil)
    }

}