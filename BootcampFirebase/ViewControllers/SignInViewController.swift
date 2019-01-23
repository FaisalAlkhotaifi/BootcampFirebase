//
//  SignInViewController.swift
//  BootcampFirebase
//
//  Created by TechCampus on 1/22/19.
//  Copyright © 2019 TechCampus. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignInViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //MARK: - VIEW LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBActions
    @IBAction func btnSignInTapped(_ sender: Any) {
        if (self.textFieldEmail.text == "" || self.textFieldPassword.text == "") {
           let alert = showAlert(title: "Error", msg: "Empty fields not allowed", actionBtnTitle: "Ok")
        self.present(alert, animated: true, completion: nil)
        }
        else {
            activityIndicator.startAnimating()
            Auth.auth().signIn(withEmail: textFieldEmail.text!, password: textFieldPassword.text!) { (dataResult, error) in
                self.activityIndicator.stopAnimating()
                if error != nil {
                    let alert = showAlert(title: "error occured", msg: "email or password invalid", actionBtnTitle: "Ok")
                    self.present(alert, animated: true, completion: nil)
                } else {
                    let alert = showAlert(title: "Login succeeded", msg: "", actionBtnTitle: "Ok")
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
    }
}
