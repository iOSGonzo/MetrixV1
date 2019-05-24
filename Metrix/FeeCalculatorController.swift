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
    

}

extension FeeCalculatorController: NumberPadDelegate{
    func originalFee(value: String) {
        sellingForLabel.text = value
    }
}


