//
//  ViewController.swift
//  App-LogTest
//
//  Created by Nelson Gonzalez on 8/15/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    //OUTLETS
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    //ACTIONS
    
    
    @IBAction func logIn(_ sender: Any) {
        signIn()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func signIn(){
        guard let username = usernameTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().signIn(withEmail: username, password: password) { (user, error) in
            if(user != nil){
                print("You have logged in")
            }
            
            else{
                print("Cant log in")
            }
        }
        
    }

}

