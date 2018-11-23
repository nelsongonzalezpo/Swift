//
//  ViewController.swift
//  Alamofire1st
//
//  Created by Nelson Gonzalez on 11/22/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    
    
    @IBOutlet weak var firstText: UITextView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var currencyButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstLabel.text! = "Coin Desk API"
        firstText.allowsEditingTextAttributes = false
        firstText.isEditable = false
        fillLabel()
    }
    

 
    func fillLabel(){
        
        let _ = request("https://api.coindesk.com/v1/bpi/currentprice.json").responseJSON { (DataResponse) in
            print(DataResponse)
            
            
            if let jsonData = DataResponse.result.value{
                let jsonObject: Dictionary = jsonData as! Dictionary<String, Any>
                
                let moneyObject: Dictionary = jsonObject["bpi"] as! Dictionary<String, Any>
                //print("The money Objects \(moneyObject)")
                
//                let usdObject: Dictionary = moneyObject["USD"] as! Dictionary<String, Any>
//                //print(usdObject)
//                let usdDescription: String = usdObject["description"] as! String
                
                let arrayMoney: [String] = ["GBP","USD","EUR"]
                
                for elemento in arrayMoney{
                    print("Elementos de dinero")
                    print(elemento)
                    print("\(moneyObject[elemento]!)")
                    
                    let random = arc4random_uniform(2)
                    print("The random is \(random)")
                    let numero = random
                    

                    
                }
                
                //General Info
                
                let disclaimer: String = jsonObject["disclaimer"] as! String
                let timeDict: Dictionary = jsonObject["time"] as! Dictionary<String,Any>
                let timeUpdated: String = timeDict["updated"] as! String
                self.timeLabel.text! = "Time updated \(timeUpdated)"


                
                self.firstText.text = "\(disclaimer)"
                
                
                
                
            }
            
        }
        
        
    }
    
}

