//
//  main.swift
//  FizzBuzz
//
//  Created by Nelson Gonzalez on 11/18/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

func FizzBuzz(number: Int){
    
    if number % 2 == 0 && number % 5 == 0{
        print("FizzBuzz")
    }
    
    else if number % 2 == 0{
        print("Fizz")
    }
    
    else if number % 5 == 0{
        print("Buzz")
    }
    
    else{
        print("None")
    }
    
}

FizzBuzz(number: 20)
