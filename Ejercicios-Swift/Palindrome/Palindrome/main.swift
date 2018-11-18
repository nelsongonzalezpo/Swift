//
//  main.swift
//  Palindrome
//
//  Created by Nelson Gonzalez on 11/17/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

print("Type your word")

func isPalindrome(aWord: String){
    
    var boolTest: Bool = false
    
    let wordReversed = String(aWord.reversed())
    
    if aWord == wordReversed{
        print("Is Palindrome")
        boolTest = true
    }
    
    else{
        print("Is not Palindrome")
    }
}


isPalindrome(aWord: readLine()!)
