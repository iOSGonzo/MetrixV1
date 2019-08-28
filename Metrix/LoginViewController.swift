//
//  LoginViewController.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 8/27/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var loginEmailField: UITextField!
    @IBOutlet weak var loginPasswordField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        // Do any additional setup after loading the view.
    }

    //dismiss keyboard on tapped outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        guard let email = loginEmailField.text else{
            return
        }
        guard let password = loginPasswordField.text else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) {user, error in
            if error == nil && user != nil{
                self.performSegue(withIdentifier: "goHome", sender: self)
            } else{
                print("Incorrect email or password!")
                //sender.shake()
            }
        }
    }
}
