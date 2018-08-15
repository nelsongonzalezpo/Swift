//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController{
    
   


    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        //Use the sender.tag to mutate the value and the note
        let note = "note"
        var notePressed = note + String(sender.tag)
        
        
        if let soundURL = Bundle.main.url(forResource: notePressed, withExtension: "wav"){
            
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            //Play
            AudioServicesPlaySystemSound(mySound)
        }
        
        print(sender.tag)
        
    }
    
    //TODO function play Noche de paz

}

