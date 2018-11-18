//
//  main.swift
//  Fibonacci
//
//  Created by Nelson Gonzalez on 11/17/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

func fibonacci(whichFibo: Int){
    
    //External Cases
    var result: Int = 0
    
    if whichFibo == 0{
        print("The result is 0 for number \(whichFibo)")
        print(result)
    }
    
    else if whichFibo == 1 || whichFibo == 2{
        result = 1
        print("The result is 1 for number \(whichFibo)")
    }
    
    else{
        
        var resultx = [0,1]
        
        for number in 2...whichFibo-1{
            let temp1 = resultx[number-1]
            let temp2 = resultx[number-2]
            
            resultx.append(temp1 + temp2)
            
            result = resultx[number]
        }
        print(result)

       
    }
    
}

//print("Enter fibonacci Number")
fibonacci(whichFibo: 9)
