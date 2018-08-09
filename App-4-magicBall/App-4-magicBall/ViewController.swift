//
//  ViewController.swift
//  App-4-magicBall
//
//  Created by Nelson Gonzalez on 8/9/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imagesArray = ["ball1", "ball2", "ball13", "ball4", "ball5",]
    
    //IBActions
    
    @IBAction func randomButton(_ sender: Any) {
        
        updateImage()
        
        
    }
    
    func updateImage(){
        
        
        var randomNum = Int(arc4random_uniform(5))
        print("El numero random es ", randomNum)
        magicImage.image = UIImage(named: imagesArray[randomNum])
    }
    
    //IBOutlet
    
    @IBOutlet weak var magicImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }


}

