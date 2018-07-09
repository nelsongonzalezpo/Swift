//
//  MainViewController.swift
//  ProyectoFinal_PueblosMagicosUDLAP
//
//  Created by Nelson Gonzalez on 11/27/17.
//  Copyright © 2017 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class MainViewController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    
    //IBOUTLET
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    
    
    var pickerViewDataSource : Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Model.initialize()
        initializeView()
        pickerView.dataSource = self
        pickerView.delegate = self
        
        
    }
    
    func initializeView()
    {
        textView.text = Model.pueblos[0].text
        
        for place in Model.pueblos
        {
            pickerViewDataSource.append(place.name)
        }
    }
    
    func updateView(index : Int)
    {
        textView.text = Model.pueblos[index].text
        imageView.image = UIImage(named:Model.pueblos[index].getImage())!

    }
    
    func updateModel(index : Int)
    {
        Model.currentPlace = Model.pueblos[index]
    }
    
    ////////////////////////
    // UIPickerViewDelegateMethods
    ///////////////////////
    
    
    //UIPickerViewDataSource methods //////////
      
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }//end numberOfComponents
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pickerViewDataSource.count
    }//end pickerView
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerViewDataSource[row]
    }//end pickerView
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        updateView(index: row)
        updateModel(index: row)
    }//end pickervIEW
    
   
    
    
}

