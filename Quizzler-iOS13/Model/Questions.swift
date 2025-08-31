//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Ankit on 24/08/25.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation


struct Question{
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
