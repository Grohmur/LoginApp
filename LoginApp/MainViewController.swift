//
//  ViewController.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 14.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var enteredUserName: UITextField!
    @IBOutlet weak var enteredPassword: UITextField!

    private let savedUserName = "user"
    private let savedPassword = "password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let loggedInVC = segue.destination as! LoggedInViewController
        loggedInVC.userName = savedUserName
    }
    
    @IBAction func forgetNamePressed() {
        showAlert(title: "Oops!", messadge: "Your name is <\(savedUserName)>")
    }
    @IBAction func forgetPasswordPressed() {
        showAlert(title: "Oops!", messadge: "Your password is <\(savedPassword)>")
    }
    
    @IBAction func logInPressed(_ sender: Any) {
        login(userName: enteredUserName.text, password: enteredPassword.text)
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        enteredPassword.text = ""
        enteredUserName.text = ""
    }
}


extension MainViewController {
    private func showAlert(title: String, messadge: String) {
        let alert = UIAlertController(title: title,
                                      message: messadge,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok",
                                      style: .default))
        present(alert, animated: true)
    }
    
    private func login(userName: String?, password: String?) {
        guard let name = userName,
                  name == savedUserName,
              let pass = password,
                  pass == savedPassword else {
                      showAlert(title: "Error",
                                messadge: "UserName of Password is wrong")
            return
        }
        performSegue(withIdentifier: "GoToLoggedInVC", sender: self)
    }
}
 

extension MainViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == enteredUserName {
            enteredPassword.becomeFirstResponder()
        } else {
            login(userName: enteredUserName.text, password: enteredPassword.text)
        }
        return true
    }
}

