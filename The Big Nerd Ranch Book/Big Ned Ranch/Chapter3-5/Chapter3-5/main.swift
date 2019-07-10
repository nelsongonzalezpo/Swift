//
//  main.swift
//  Chapter3-5
//
//  Created by Nelson Gonzalez on 7/9/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

//Ternary Operator
var message: String = ""
var number: Int = 10

message = number > 5 ? "\(message)Es mayor": "\(message)Es menor"

print("Ternary")
print(message)



//Nested Ifs
number = 100
message = ""

if number == 100{
    
    message = "Es igual"
}

else{
    
    if number < 100{
        message = "Es menor"
    }
    
    else{
        message = "Es mayor"
    }
    
}

print("Nested")
print(message)

