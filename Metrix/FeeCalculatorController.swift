//
//  FeeCalculatorController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/19/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class FeeCalculatorController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove thin line on nav bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        //remove thin line on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
    }
    
}

