//
//  ViewController.swift
//  HustleMode
//
//  Created by Nelson Gonzalez on 12/4/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var darkBlue: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocketImg: UIImageView!
    @IBOutlet weak var onLabel: UILabel!
    @IBOutlet weak var hustleLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")
        let url = URL(fileURLWithPath: path)!
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
                print(error)
        }
        
    }
    
    func moveAirplane(){
        
        cloudHolder.isHidden = false
        darkBlue.isHidden = true
        button.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocketImg.frame = CGRect(x: 0, y: 20, width: 375, height: 402)
        }) { (finished) in
            
            self.hustleLabel.isHidden = false
            self.onLabel.isHidden = false
            
        }
        
        
    }
    
    
    
    @IBAction func buttonMove(_ sender: Any) {
        moveAirplane()
    }
    

}

