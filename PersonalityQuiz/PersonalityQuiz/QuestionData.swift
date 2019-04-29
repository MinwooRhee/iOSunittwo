//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Min Woo on 4/22/19.
//  Copyright © 2019 Min Woo. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case snake = "🐍", snail = "🐌", bat = "🦇", squid = "🦑"
    
    var definition: String {
        switch self {
        case .snake:
            return "You are a snake. You like slithering on the floor."
        case .snail:
            return "You are a snail. Big amount of sodium will kill you."
        case .bat:
            return "You are a bat. You are not like other mammals."
        case .squid:
            return "You are a squid. You drown your victims into deep water."
        }
    }
}
