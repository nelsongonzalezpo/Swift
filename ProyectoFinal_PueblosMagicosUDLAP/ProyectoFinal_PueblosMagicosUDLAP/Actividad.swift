//
//  Actividad.swift
//  ProyectoFinal_PueblosMagicosUDLAP
//
//  Created by Nelson Gonzalez on 12/3/17.
//  Copyright © 2017 Nelson Gonzalez. All rights reserved.
//

import Foundation

class Actividad
{
    var name : String
    var imageName : String
    
    init(_ aName : String, _ anImageName : String ) {
        
        name = aName
        imageName = anImageName
    }
    
    func getImage()->String
    {
        return imageName
    }
}
