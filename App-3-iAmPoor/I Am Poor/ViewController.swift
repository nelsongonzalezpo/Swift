//
//  ViewController.swift
//  I Am Poor
//
//  Created by Angela Yu on 24/08/2016.
//
//

import UIKit

class ViewController: UIViewController {

    
    
    //IBAction
    
    @IBAction func discoverButton(_ sender: Any) {
        
        poorLabel.text = "You made me miserable"
    }
    
    //IBOutlet
    @IBOutlet weak var poorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

