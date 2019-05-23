//
//  FeeCalculatorController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/19/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class FeeCalculatorController: UIViewController {
    
    var labelNumber: String = "$"
    var labelNumber2: String = ""
    
    //OUTLETS
    @IBOutlet weak var enterAmountBtn: UIButton!
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var sellingForLabel: UILabel!
    @IBOutlet weak var ebayRenevueLabel: UILabel!
    @IBOutlet weak var stockXRenevueLabel: UILabel!
    @IBOutlet weak var mercariRenevueLabel: UILabel!
    @IBOutlet weak var bumpRenevueLabel: UILabel!
    
    
    @IBOutlet weak var numPadLabel: UILabel!
    
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
    
    
    @IBAction func backspace(_ sender: UIButton) {
        if labelNumber.count > 0{
            labelNumber = String(labelNumber.dropLast())
            numPadLabel.text = labelNumber
        }
        else{
            return
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove thin line on nav bar
        navBar?.setBackgroundImage(UIImage(), for: .default)
        navBar?.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        
        
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
    
    
    //dismiss animations
    @IBAction func dismissPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func donePressed(_ sender: UIButton) {
        print(sellingForLabel?.text)
        print("updating fees")
        print(labelNumber)
        self.dismiss(animated: true, completion: nil)
        self.dismiss(animated: <#T##Bool#>) {
            <#code#>
        }
        //sellingForLabel.text = labelNumber

    }
    
    
    func updateFees(){
        print("none")
    }
        
}

