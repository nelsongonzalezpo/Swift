//
//  ViewController.swift
//  Alamofire-ObjectMapper
//
//  Created by Nelson Gonzalez on 11/22/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper


class ViewController: UIViewController {
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let URL = request("https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/d8bb95982be8a11a2308e779bb9a9707ebe42ede/sample_json").responseJSON { (datas) in
        
        if let jsonData = datas.value{
            
            let jsonObject: Dictionary = jsonData as! Dictionary<String, Any>
            let location: String = jsonObject["location"] as! String
            
            let threeDay: Dictionary = jsonObject
            
            
            let conditions: String = threeDay["day"] as! String
                
            

            //print(jsonData)
            //print(location)
            print(threeDay)
            //print(conditions)
            
        }
        
        
        

    }
    
}
    
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    




