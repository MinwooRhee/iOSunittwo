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
    var answer: [Answer]
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
}
