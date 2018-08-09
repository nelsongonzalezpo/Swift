//
//  main.swift
//  App-swiftOverview
//
//  Created by Nelson Gonzalez on 8/9/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

//Variables can change value

var hello: String = "Hello"
print(hello) // hello = "hello"

hello = "Now I have another value"
print(hello) //hello = "now i have another value"


var number: Int = 200
print(number) // number = 200

number = number / 100
print(number) //number = 2 (200/100)


//Constant cant change value (Example name)
let name = "Benito Juarez"

//name = "John" this wont work

print("")

func printStuff(){
    print("Function to print stuff")
    print(hello)
    print(number)
    print(name)
}


//More examples

let nombre = "Juan Perez"
var age = 33
var married: Bool = false
var weight: Float = 59.5

var fullName = nombre + " Sanchez"
print("My full name is ", fullName)

//Conditions

//Married Conditions
if(!married){
    print("I am not married yet")
}

else{
    print("I am married")
}

//Weight Conditions

if(weight >= 100){
    print("You are heavy")
}

else if(weight <= 30){
    print("You are invisible")
}

else if(weight >= 50 && weight <= 80){
    print("You are fine")
}

//Functions

func sayHi(){
    print("Hi friend")
}

//Use functions

sayHi()


//printStuff()
