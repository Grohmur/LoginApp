//
//  InformationVCViewController.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 21.12.2021.
//

import UIKit

class InformationVC: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var education: UILabel!
    @IBOutlet weak var work: UILabel!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var status: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Имя пользователя: \(user.person.name)"
        age.text = "Возраст: \(user.person.age)"
        city.text = "Город: \(user.person.city)"
        education.text = "Образование: \(user.person.education)"
        work.text = "Место работы: \(user.person.workPlace)"
        position.text = "Должность: \(user.person.position)"
        status.text = "Семейное положение: \(user.person.status)"
    }
}
