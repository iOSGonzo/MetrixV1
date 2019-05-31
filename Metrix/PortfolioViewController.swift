//
//  ViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/10/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController {

    @IBOutlet weak var portfolioValueLabel: UILabel!
    @IBOutlet weak var avgValueLabel: UILabel!
    @IBOutlet weak var itemsAmountLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var addItemNameTextField: UITextField!
    @IBOutlet weak var addItemValueTextField: UITextField!
    
    var tempValue: String = ""
    var itemTitles = [String]()
    var itemValues = [String]()
    
    var totalValue: Double = 0.0
    var avgValue: Double = 0.0
    
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
            print("new item added")
        }
    }
    
    func insertNewItem(){
        totalValue = totalValue + Double(addItemValueTextField.text!)!
        portfolioValueLabel.text = "$" + String(Int(totalValue))
        avgValue = totalValue/(Double(itemTitles.count+1))
        avgValue = avgValue.roundToDecimal(2)
        avgValueLabel.text = "$" + String(avgValue)
        
        itemsAmountLabel.text = String(itemTitles.count+1)
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
    
    
//    DELETING ROWS
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
//
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete{
//
//            itemTitles.remove(at: indexPath.row)
//            itemValues.remove(at: indexPath.row)
//
//            tableView.beginUpdates()
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//            tableView.endUpdates()
//        }
//    }
}
