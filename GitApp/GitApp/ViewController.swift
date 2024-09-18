//
//  ViewController.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import UIKit

class ViewController: UIViewController {
    private let helper = Helper()
    private let userRepository = UserRepository()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.alpha = 0.9
        setupUser()
    }
        
    private func setupUser() {
        let users = userRepository.fetchUsers()
        
        helper.addUsers(users)
        
        for user in helper.listUsers() {
            print("Мy name is \(user.person.fullName).")
        }
    }
}

