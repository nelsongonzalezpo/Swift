//
//  main.swift
//  RepasoSinDelantal
//
//  Created by Nelson Gonzalez on 6/28/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

print("Repaso Sin Delantal")

func revisarPalindromo(palabra: String) {
    
    var esPalin: Bool = false
    var reverse = ""
    
    if(palabra == ""){
        print("Palabra vacia")
        print(esPalin)

    }
    
    else if (palabra != ""){
        
        reverse = String(palabra.reversed())
        print(reverse)
        
        if(palabra == reverse){
            esPalin = true
            //print(esPalin)
        }
       
        
    }
    
    print(esPalin)

  
}

revisarPalindromo(palabra: "bob")


func factorial(numero: Int){


    if(numero < 0){
        print("No acepta negativos")
    }

    else if(numero == 0 || numero == 1){
        print("1")
    }

    else{
        var resultado: Int = 1
        for index in 1...numero{
            resultado *= index
        }
        print(resultado)

    }

}

factorial(numero: 10)
