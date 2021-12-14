//
//  LoggedInViewController.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 14.12.2021.
//

import UIKit

class LoggedInViewController: UIViewController {
    @IBOutlet weak var greatingLabel: UILabel!
    
    var greatingMessage = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greatingLabel.text = greatingMessage
    }

}
