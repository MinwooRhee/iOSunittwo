//
//  Game.swift
//  ApplePie
//
//  Created by Min Woo on 3/13/19.
//  Copyright © 2019 Min Woo. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.lowercased().contains(letter) {
            incorrectMovesRemaining -= 1
        }
        
    }
}
