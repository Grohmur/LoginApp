//
//  ViewController.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 14.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enteredUserName: UITextField!
    @IBOutlet weak var enteredPassword: UITextField!
    //почему-то у меня не появляется клавиатура :(( Даже при нажатии command + k
    var savedUserName: String {
        "user"
    }
    var savedPassword: String {
        "password"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loggedInVC = segue.destination as! LoggedInViewController
        loggedInVC.greatingMessage = "Hello, \(savedUserName)!"
    }
    
    @IBAction func forgetNamePressed() {
        showAlert(messadge: "Your name is <\(savedUserName)>")
    }
    @IBAction func forgetPasswordPressed() {
        showAlert(messadge: "Your password is <\(savedPassword)>")
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        login(userName: enteredUserName.text, password: enteredPassword.text)
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        enteredPassword.text = ""
        enteredUserName.text = ""
    }
}


extension ViewController {
    private func showAlert(messadge: String) {
        let alert = UIAlertController(title: "Oops!", message: messadge, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
    private func wrongText(wrongTextField: String) {
        let alert = UIAlertController(title: "Error", message: "\(wrongTextField) is wrong", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
    private func login(userName: String?, password: String?) {
        guard let name = userName, name == savedUserName else { wrongText(wrongTextField: "User Name")
            return
        }
        guard let pass = password, pass == savedPassword else {
            wrongText(wrongTextField: "Password")
            return
        }
        performSegue(withIdentifier: "GoToLoggedInVC", sender: self)
    }
    
    
}
