//
//  main.swift
//  Steps
//
//  Created by Nelson Gonzalez on 11/18/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

//Ordered
func steps(number: Int){
    
    let symbol = "#"
    
    if number == 1{
        print(" ")
    }
    
    if number == 1{
        print(symbol)
    }
    
    else{
        for x in 1...number{
            var array: [String] = []
            //array.append(symbol)
            for y in 1...number{
                if x>y{
                    array.append(symbol)
                }
            }
            
            print(array)
            
        }
    }
    
}

steps(number: 4)
