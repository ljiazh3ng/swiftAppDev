//
//  QuestionGenerator.swift
//  Quizzler-iOS13
//
//  Created by Jia Zheng Lua on 14/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionGenerator {
    var ran1 = 0
    var ran2 = 0
    var ans = 0
    var correct = false
    mutating func generateQuestion() -> (String, Bool) {
        correct = Bool.random()
        if correct {
            ran1 = Int.random(in: 0 ..< 10)
            ran2 = Int.random(in: 0 ..< 10)
            ans = ran1 + ran2
        } else {
            ran1 = Int.random(in: 0 ..< 10)
            ran2 = Int.random(in: 0 ..< 10)
            let pos = Bool.random()
            if pos {
                ans = ran1 + ran2 + Int.random(in: 1 ..< 3)
            } else {
                ans = ran1 + ran2 - Int.random(in: 1 ..< 3)
            }
        }
        return (("\(ran1) + \(ran2) = \(ans)"), correct)
    }
    
}
