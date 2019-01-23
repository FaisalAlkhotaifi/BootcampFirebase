//
//  SignUpViewController.swift
//  BootcampFirebase
//
//  Created by TechCampus on 1/22/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSignupTapped(_ sender: Any) {
        if (self.textFieldEmail.text == "" || self.textFieldPassword.text == "") {
            let alert = showAlert(title: "Error", msg: "Empty fields not allowed", actionBtnTitle: "Ok")
            self.present(alert, animated: true, completion: nil)
        }
        else {
            
            Auth.auth().createUser(withEmail: self.textFieldEmail.text!, password: self.textFieldPassword.text!) { (dataResult, error) in
                if error != nil {
                    let alert = showAlert(title: "Error", msg: "\(error!)", actionBtnTitle: "Ok")
                    self.present(alert, animated: true, completion: nil)
                }
                else {
                    let alert = showAlert(title: "Succeeded", msg: "Welcome to BootcampFiresbase", actionBtnTitle: "Ok")
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func btnSigninTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
