//
//  ViewController.swift
//  HeadFirst-iOSExample-Animals
//
//  Created by Nelson Gonzalez on 6/5/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let rulfo = Dog()
    let perro = Dog()
    let test = Animal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Working...")
        print("")

        rulfo.setName(name: "Josesito")
        perro.setName(name: "Janito")
        test.setName(name: "Prueba")

        rulfo.sayAnimal()
        rulfo.sayCanine()
        rulfo.sayPerro()
        
        print("")
        
        perro.sayAnimal()
        perro.sayCanine()
        perro.sayPerro()
        
        print("")
        
        test.sayAnimal()
        test.sayCanine()
        test.sayPerro()
//

    }


}

