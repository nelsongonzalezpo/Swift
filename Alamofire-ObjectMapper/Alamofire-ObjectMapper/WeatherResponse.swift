//
//  Currency.swift
//  Alamofire-ObjectMapper
//
//  Created by Nelson Gonzalez on 11/22/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class Currency: Mappable{
    
    var monedas: [Currencies]?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        
    }
    
        
}
    
    
    


    


class Currencies: Mappable{
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        
    }
    
    
}
