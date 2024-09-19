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
    
    private let textLabel = UILabel()
    private let textButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.alpha = 0.9
        setupUser()
        
        setupUILabel()
        view.addSubview(textLabel)
        view.addSubview(textButton)
    }
        
    private func setupUser() {
        let users = userRepository.fetchUsers()
        
        helper.addUsers(users)
        
        for user in helper.listUsers() {
            print("Мy name is \(user.person.fullName).")
        }
    }
    
    private func setupUILabel() {
        textLabel.text = helper.listUsers().randomElement()?.person.fullName
        textLabel.font = .systemFont(ofSize: 25, weight: .bold)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}

