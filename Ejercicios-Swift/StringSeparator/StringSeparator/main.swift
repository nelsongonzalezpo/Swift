//
//  main.swift
//  StringSeparator
//
//  Created by Nelson Gonzalez on 11/18/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

func stringSep(word: String){
    
    var allLeters: [Character] = []
    var allLetersReversed: [Character] = []

    
    //Normal
    for letter in word{
        
        allLeters.append(letter)
    }
    
    //Reversed
    for letter in word.reversed(){

        allLetersReversed.append(letter)
    }
    
    print(allLeters)
    print(allLetersReversed)
    let finalWord = String(allLetersReversed)
    print(finalWord)
}

stringSep(word: "anita")
