//
//  FeeCalculatorController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/19/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class FeeCalculatorController: UIViewController {
    
    //OUTLETS
//    @IBOutlet weak var enterAmountBtn: UIButton!
    @IBOutlet weak var sellingForLabel: UILabel!
//    @IBOutlet weak var ebayRenevueLabel: UILabel!
//    @IBOutlet weak var stockXRenevueLabel: UILabel!
//    @IBOutlet weak var mercariRenevueLabel: UILabel!
//    @IBOutlet weak var bumpRenevueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove thin line on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
    }
    
    //makes status bar light (white)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("VIEW APPEARED")
    }
    
    func updateFees(){
        print("none")
    }
    
    
    @IBAction func donePressed(_ sender: UIButton) {
        //print(sellingForLabel?.text)
        print("updating fees")
        print(labelNumber)
        sellingForLabel.text = labelNumber
    }
    
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
        }
        else{
            return
        }
    }
    
    var labelNumber: String = "$"
    var labelNumber2: String = ""
    
    
    
    @IBOutlet weak var numPadLabel: UILabel!

    
}

