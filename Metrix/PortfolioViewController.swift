//
//  ViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/10/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove thin border on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
        //remove thin border on nav bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }

    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
