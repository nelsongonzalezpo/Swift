//
//  ViewController.swift
//  App-Fibonacci
//
//  Created by Nelson Gonzalez on 8/14/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //IBOutlet
    
    @IBOutlet weak var inputArea: UITextField!
    
    @IBOutlet weak var outputArea: UITextField!
    
    
    //IBAction
    
    
    
    @IBAction func getFibonacci(_ sender: Any) {
        var numFibonumFibo = Int(inputArea.text!)
        fibonacci(numero: numFibonumFibo!)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fibonacci(numero:Int){
        
        var resultado = 0
        if(numero == 0){
            print("Fibonacci", resultado)
            outputArea.text = String(resultado)
        }
            
        else if(numero == 1){
            resultado = 1
            print("Fibonacci ", resultado)
            outputArea.text = String(resultado)
        }
        
        else{
            
            var num1 = 0
            var num2 = 1
            
            for number in (0...numero){
                resultado = num1 + num2
                print(resultado)
                outputArea.text! = String(resultado)
                num1 = num2
                num2 = resultado
            }
        }
    }
    




}

