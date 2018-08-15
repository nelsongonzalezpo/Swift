//
//  main.swift
//  App-swiftOverview
//
//  Created by Nelson Gonzalez on 8/9/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation
//============================================
//INTRODUCTION AND BASIC DECLARATINOS ON SWIFT
//============================================





//Variables can change value

var hello: String = "Hello"
print(hello) // hello = "hello"

hello = "Now I have another value"
print(hello) //hello = "now i have another value"


var number: Int = 200
print(number) // number = 200

number = number / 100
print(number) //number = 2 (200/100)

//============================================
//Constant cant change value (Example name)
//============================================

let name = "Benito Juarez"

//name = "John" this wont work

print("")


//============================================
//More examples
//============================================

let nombre = "Juan Perez"
var age = 33
var married: Bool = false
var weight: Float = 59.5

var fullName = nombre + " Sanchez"
print("My full name is ", fullName)

//============================================
//Conditions
//============================================

//Married Conditions
if(!married){
    print("I am not married yet")
}

else{
    print("I am married")
}

//============================================
//Weight Conditions
//============================================

if(weight >= 100){
    print("You are heavy")
}

else if(weight <= 30){
    print("You are invisible")
}

else if(weight >= 50 && weight <= 80){
    print("You are fine")
}
//============================================
//Functions
//============================================

func sayHi(){
    print("Hi friend")
    print("Hi again")
}

//Use functions
sayHi()
print("")

//============================================
//Advanced Functions (INPUTS)
//============================================

func sayHiName(name:String){
    print("Hi", name)
}

sayHiName(name: "John")

func sayHiAndAge(name:String, year:Int){
    let now = 2018
    var age:Int = 0
    age = now - year
    print("Hi friend: ", name, " you are ", age)

}

sayHiAndAge(name: "Mike", year: 1995)

//============================================
//Functions with return statement
//============================================

func sayYourName(name: String) -> String{
    print("Good morning")
    return "Este es tu nombre \(name)"
}

print(sayYourName(name: "Jose Luis"))
print("")

func goToMarket(total:Int, available:Int) -> Int{
    
    var change = 0
    change = available - total
    
    print("We are going 4 shopping")
    
    if(total > available){
        print("You cant pay this man, you need \(change * -1) more")
    }
    
    else if(total < available){
        print("You can pay this, your change is \(change)")
    }
    
    else if(total == available){
        print("FIIIIUF your change is \(change) apenitas mijo")
    }
    
    return change
}

print(goToMarket(total: 97, available: 98))


func loveCalculator(yourName: String, secondName: String)-> String{
    
    let loveScore = Int(arc4random_uniform(100))
    print("The love score between \(yourName) and \(secondName) is \(loveScore)")
    
    if(loveScore >= 80){
        return("You are very lucky \(loveScore)")
    }
        
    else if(loveScore > 50 && loveScore < 80){
        return("You can try \(loveScore)")
    }
    
    else if(loveScore <= 50){
        return("good bye \(loveScore)")
    }
        
    
    else if(loveScore >= 90){
        return("Soulmates \(loveScore)")
    }
    
    return "This is your love score \(loveScore)"
}

print("")
print(loveCalculator(yourName: "Vicky", secondName: "Muder"))


func BMICalcularor(weight: Float, height: Float)-> String{
    
    var bmi: Float = 0
    bmi = weight/(height * height)
    
    let reducedBMI = String(format: "%0.2f", bmi)
    
    
    if(bmi > 25){
        print("You are overweighted")
    }
    
    else if (bmi < 18.5){
        print("You will desapear")
    }
    
    else if(bmi >= 18.5 && bmi <= 25){
        print("You are OK")
    }
    
    return "This is your BMI \(bmi) and this is the reduced bmi \(reducedBMI)"
    
}

print("")
print(BMICalcularor(weight: 75, height: 1.74))
print("")

var arregloNombres = ["Juan", "Paco", "Pedro"]
let apellido = "De La Mar"

var cont = 0
while(cont < arregloNombres.count){
    print("Aqui viene uno")
    print("Hola", arregloNombres[cont], apellido)
    cont+=1
    
}

arregloNombres.append("Rodri")
print(arregloNombres)

let arrayOfNumbers = [1,5,10,435,123,85]
var sum = 0
var i = 0

while(i < arrayOfNumbers.count){
    sum += arrayOfNumbers[i]
    print("Ahora es ", sum)
    i+=1
}
print("El final es ", sum)

//Mas Bonito

var suma = 0
for number in arrayOfNumbers{
    print(suma)
    print("La suma de ", suma, "y ", number)
    suma += number
    print(suma)
}


var sumNumber = 0
for number in 1...10{
    print("El numero")
    print(number)
    print("La suma \(sumNumber)")
    sumNumber += number
    print("La nueva suma", sumNumber)
}


var sumaPar = 0
for number in 1...10 where number % 2 == 0{
    print("El par",number)
    sumaPar += number
    print("La suma par \(sumaPar)")
    
}


func imprimirCancionFea(numero:Int){
    let parrafo1 = "bottles of beer on the wall"
    let parrafo2 = "bottles of beer"
    
    let parrafo3 = "take one down and pass it arround"


   for number in (1...numero).reversed(){
        print(number, parrafo1, number, parrafo2)
        print(parrafo3, number-1, parrafo1)
    }
}

//Quitar el comentario para ver la funcion
//print(imprimirCancionFea(numero:100))


//FIBONACCI CHALLENGE

print("")
print("FIBONACCI")
print("")

func fibonacciX(numero:Int){
    var resultado = 0
    if(numero == 0){
        print("Fibonacci", resultado)
    }
    
    else if(numero == 1){
        resultado = 1
        print("Fibonacci ", resultado)
    }
    
    else{
        var var1 = 0
        var var2 = 1
        for number in(0...numero){
            resultado = var1 + var2
            print(resultado)
            var1 = var2
            var2 = resultado
        }
    }
}

fibonacciX(numero: 100)

