//
//  ViewController.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {

    var userName: String {
        "user"
    }
    var password: String {
        "password"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func forgetUserNamePressed() {
        let nameAlert = UIAlertController(title: "Oops!", message: "Your name is \(userName)", preferredStyle: .alert)
        present(nameAlert, animated: true)
    }
    
}
