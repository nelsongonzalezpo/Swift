//
//  Animal.swift
//  HeadFirst-iOSExample-Animals
//
//  Created by Nelson Gonzalez on 6/5/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

class Animal{
    
    var name: String = ""
    var age: Int = 0
    
    func setName(name:String){
        self.name = name
    }
    
    func getName() -> String{
        return name
    }
    
    func sayAnimal(){
        print(name, " I'm an animal")
    }
    
    func sayCanine(){}
    func sayPerro(){}
    
    
}
