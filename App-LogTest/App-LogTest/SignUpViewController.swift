//
//  SignUpViewController.swift
//  App-LogTest
//
//  Created by Nelson Gonzalez on 8/15/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate{
    
    //Outlets
    
    
    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    //Actions
    
    
    @IBAction func registerButton(_ sender: Any) {
        handleSignUp()
    }
    
    
    
    @objc func handleSignUp(){
        
        guard let mail = mailTextField.text else {return}
        //guard let username = usernameTextField.text else {return}
        guard let password = passwordTextField.text else{return}
        
        Auth.auth().createUser(withEmail: mail, password: password) { (user, error) in
            if(user != nil){
                print("User added")
            }
            
            else if (user == nil){
                print("NOT added")
            }
        }
        
    }
    
}
