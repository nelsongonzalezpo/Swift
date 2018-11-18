//
//  main.swift
//  Integer-Reversal
//
//  Created by Nelson Gonzalez on 11/17/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

let numbers: [Int] = [10,20,30,50]

var reversedNumbers: [Int] = []

for x in numbers.reversed(){
    reversedNumbers.append(x)
}

print(reversedNumbers)
