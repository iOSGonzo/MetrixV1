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
        
        //listen to notifications
//        NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .savePriceEntered, object: nil)
        NotificationCenter.default.addObserver(forName: .savePriceEntered, object: nil, queue: OperationQueue.main) { (notification) in
            let numpadVC = notification.object as! NumberPadPopupController
            self.sellingForLabel.text = numpadVC.labelNumber
        }
        //remove thin line on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
//        let sb = UIStoryboard(name: "HomeViewController", bundle: nil)
//        let popup = sb.instantiateInitialViewController()! as! NumberPadPopupController
//        popup.delegate = self
//        self.present(popup, animated: true)
    }
    
    //makes status bar light (white)
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
}



