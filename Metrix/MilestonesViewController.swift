//
//  MilestonesViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/29/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class MilestonesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //remove thin border on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
        //remove thin border on nav bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
}
