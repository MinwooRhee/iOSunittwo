//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Min Woo on 4/18/19.
//  Copyright © 2019 Min Woo. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        singleStackViewView.isHidden =  true
        multipleStackViewView.isHidden =  true
        rangedStackViewView.isHidden =  true
    }
    
    var questionIndex = 0
    
    var questions: [Question] = [
        Question(text : "Which food do you like the most?", type: .single,
                 answers: [
                    Answer(text: "Rats", type: .snake),
                    Answer(text: "Veggies", type: .snail),
                    Answer(text: "Insects", type: .bat),
                    Answer(text: "Fish", type: .squid)
            ]),
        
        Question(text : "Which activities do you enjoy?", type: .multiple,
                 answers: [
                    Answer(text: "Staying still", type: .snake),
                    Answer(text: "Walking in the rain", type: .snail),
                    Answer(text: "Sneaking into old houses", type: .bat),
                    Answer(text: "Counting how many arms I have", type: .squid)
            ]),

        Question(text : "What is your skin like?", type: .ranged,
                answers: [
                    Answer(text: "Smooth and peels of every once in while", type: .snake),
                    Answer(text: "Moisturized all the time", type: .snail),
                    Answer(text: "Fuzzy", type: .bat),
                    Answer(text: "Sticky and changes color", type: .squid)
            ])
    ]
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
