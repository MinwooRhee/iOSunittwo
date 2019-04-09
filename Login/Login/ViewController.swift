//
//  ViewController.swift
//  Login
//
//  Created by Min Woo on 4/5/19.
//  Copyright © 2019 Min Woo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot User Name"
        }
        else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else {
            segue.destination.title = userName.text
        }
    }
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: forgotUserNameButton)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "forgot", sender: forgotPasswordButton)
    }
}
