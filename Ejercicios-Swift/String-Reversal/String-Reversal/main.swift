//
//  main.swift
//  String-Reversal
//
//  Created by Nelson Gonzalez on 11/16/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

print("String Reversal")
print("")

let word = "hello"
let newWord = String(word.reversed())

//Read from keyboard
print("Type your new word")
let newAskedWord = readLine()!.lowercased()

//reverse new word
let newReversedWord = String(newAskedWord.reversed())


print("Reversed word", newWord)
print("You typed \(newAskedWord)")
print("The new reversed word is \(newReversedWord)")
