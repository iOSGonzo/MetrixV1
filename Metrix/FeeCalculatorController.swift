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
    @IBOutlet weak var sellingForLabel: UILabel!
    @IBOutlet weak var ebayRenevueLabel: UILabel!
    @IBOutlet weak var stockXRenevueLabel: UILabel!
    @IBOutlet weak var mercariRenevueLabel: UILabel!
    @IBOutlet weak var bumpRenevueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //listen to notifications
        NotificationCenter.default.addObserver(forName: .savePriceEntered, object: nil, queue: OperationQueue.main) { (notification) in
            let numpadVC = notification.object as! NumberPadPopupController
            self.sellingForLabel.text = numpadVC.labelNumber2
            self.ebayRenevueLabel.text = numpadVC.ebayFeeString
            self.stockXRenevueLabel.text = numpadVC.stockXFeeString
            self.mercariRenevueLabel.text = numpadVC.mercariFeeString
            self.bumpRenevueLabel.text = numpadVC.bumpFeeString
        }
        
        //remove thin border on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
        //remove thin border on nav bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
}



