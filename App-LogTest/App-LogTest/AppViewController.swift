//
//  AppViewController.swift
//  App-LogTest
//
//  Created by Nelson Gonzalez on 8/15/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class AppViewController:UIViewController, UITextFieldDelegate{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func logOutButton(_ target: Any) {
        
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    
    
}
