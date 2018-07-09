//
//  Pueblo.swift
//  ProyectoFinal_PueblosMagicosUDLAP
//
//  Created by Nelson Gonzalez on 11/27/17.
//  Copyright © 2017 Nelson Gonzalez. All rights reserved.
//

import Foundation

class Pueblo
{
     var name : String
     var latitude : Double
     var longitude : Double
     var text : String
    var imageName : String
    
    init(_ aName : String, _ aLatidude : Double, _ aLongitude : Double, _ aText : String, _ anImageName : String ) {
        
        name = aName
        latitude = aLatidude
        longitude = aLongitude
        text = aText
        imageName = anImageName
    }
    
    func getImage()->String
    {
        return imageName
    }
}
