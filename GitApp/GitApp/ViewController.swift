//
//  ViewController.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUser()
    }
        
    private func setupUser() {
        
        let userOne = User(login: "john48", password: "g73jd9", name: "John", lastName: "Lee")
        let userTwo = User(login: "eva@sm", password: "t65f98", name: "Eva", lastName: "Smith")
        
        helper.addUser(userOne)
        helper.addUser(userTwo)
        
        for user in helper.listUsers() {
            print("Мy name is \(user.person.fullName).")
        }
    }
}

