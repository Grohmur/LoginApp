//
//  ProfileVK.swift
//  LoginApp
//
//  Created by Михаил Зверьков on 21.12.2021.
//

import UIKit

class ProfileVK: UIViewController {

    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.name
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let information = segue.destination as? InformationVC else { return }
        information.user = user
    }
}
