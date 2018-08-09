//
//  ViewController.swift
//  App-2-DiceeApp
//
//  Created by Nelson Gonzalez on 8/7/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //Dice Index
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    //IB-Outlets
    //Dados
    @IBOutlet weak var imageDice1: UIImageView! //imagen dado 1
    @IBOutlet weak var imageDice2: UIImageView! //imagen dado 2
    
    //IB-Actions
    //Button to roll the dices
    
    @IBAction func rollButton(_ sender: UIButton) {
        
        updateImages()
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateImages(){
        
        randomDice1 = Int(arc4random_uniform(6))
        print("Dado 1 = " ,randomDice1)
        
        randomDice2 = Int(arc4random_uniform(6))
        print("Dado 2 = " ,randomDice2)
        
        imageDice1.image = UIImage(named: diceArray[randomDice1])
        imageDice2.image = UIImage(named: diceArray[randomDice2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImages()
        
    }

}

