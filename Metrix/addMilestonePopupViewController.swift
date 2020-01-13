//
//  addMilestonePopupViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/29/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class addMilestonePopupViewController: UIViewController{
    
    let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    
    @IBOutlet weak var lengthSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var typeSegmentedControl: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControlStyles()

    }
    
    @IBAction func cancelPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func segmentedControlStyles(){
        lengthSegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        lengthSegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .selected)
        typeSegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        typeSegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .selected)
        
    }
    
    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //remove thin border on nav bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.shouldRemoveShadow(true)
    }
}

extension UINavigationBar {
    
    func shouldRemoveShadow(_ value: Bool) -> Void {
        if value {
            self.setValue(true, forKey: "hidesShadow")
        } else {
            self.setValue(false, forKey: "hidesShadow")
        }
    }
}
