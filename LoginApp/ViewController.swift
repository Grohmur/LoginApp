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
    
    @IBAction func forgetNamePressed() {
        showAlert(messadge: "Your name is <\(userName)>")
    }
    @IBAction func forgetPasswordPressed() {
        showAlert(messadge: "Your password is <\(password)>")
    }
    
}


extension ViewController {
    private func showAlert(messadge: String) {
        let alert = UIAlertController(title: "Oops!", message: messadge, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
}
