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
        singleStackView.isHidden =  true
        multipleStackView.isHidden =  true
        rangedStackView.isHidden =  true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateSingleStack(using: currentAnswers)
        case .ranged:
            updateSingleStack(using: currentAnswers)
        }
    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        switch sender {
        case singleButton1:
            answersChosen.append(currentAnswers[0])
        case singleButton2:
            answersChosen.append(currentAnswers[1])
        case singleButton3:
            answersChosen.append(currentAnswers[2])
        case singleButton4:
            answersChosen.append(currentAnswers[3])
        default:
            break
        }
    }
    
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    var questionIndex = 0
    
    var answersChosen: [Answer] = []
    
    
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
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
