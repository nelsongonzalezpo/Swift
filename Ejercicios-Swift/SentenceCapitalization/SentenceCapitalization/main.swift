//
//  main.swift
//  SentenceCapitalization
//
//  Created by Nelson Gonzalez on 11/18/18.
//  Copyright © 2018 Nelson Gonzalez. All rights reserved.
//

import Foundation

func sentenceCap(sentence: String){
    
    var newSentence = sentence.split(separator: " ")
    
    for words in 0...newSentence.count-1{
        print(newSentence[words].uppercased())
    }
    
    
    
}

sentenceCap(sentence: "how are you")
