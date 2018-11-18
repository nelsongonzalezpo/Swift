//
//  main.swift
//  Array-Sum
//
//  Created by Nelson Gonzalez on 11/17/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

let firstArray: [Int] = [1,2,3,4,5]

let secondArray = firstArray

var sum: Int = 0

if firstArray.isEmpty{
    sum = -1
}

for number in firstArray{
    sum += number
}

if sum < 0{
    print("The array was empty")
}

print("The result is \(sum)")

