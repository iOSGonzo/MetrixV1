//
//  ViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/10/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addItemNameTextField: UITextField!
    @IBOutlet weak var addItemValueTextField: UITextField!
    
    var itemTitles = [String]()
    var itemValues = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove thin border on tab bar
        self.tabBarController?.tabBar.shadowImage = UIImage()
        self.tabBarController?.tabBar.backgroundImage = UIImage()
        
        //remove thin border on nav bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        if addItemNameTextField.text!.isEmpty || addItemValueTextField.text!.isEmpty{
            return
        } else{
            insertNewItem()
        }
    }
    
    func insertNewItem(){
        itemTitles.append(addItemNameTextField.text!)
        itemValues.append("$" + addItemValueTextField.text!)
        
        let indexPath = IndexPath(row: itemTitles.count-1, section: 0)
        
        tableView.beginUpdates()
        tableView.insertRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
        
        addItemNameTextField.text = ""
        addItemValueTextField.text = ""
        view.endEditing(true)
    }
    
    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension PortfolioViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemTitles.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemTitle = itemTitles[indexPath.row]
        let itemValue = itemValues[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as! ItemCell
        cell.itemTitleLabel.text = itemTitle
        cell.itemValueLabel.text = itemValue
        return cell
    }
}
