//
//  ViewController.swift
//  AccelerometerApp
//
//  Created by Nelson Gonzalez on 11/18/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates()
    }
    
    //Outlets
    
    var motionManager: CMMotionManager!
    
    @IBOutlet weak var xOutlet: UILabel!
    @IBOutlet weak var yOutlet: UILabel!
    @IBOutlet weak var zOutlet: UILabel!
    
    
    func updateLabels(data: CMAccelerometerData, error: Error?){
        
        
        
        
    }
    
}

