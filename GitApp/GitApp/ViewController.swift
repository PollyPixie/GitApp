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
    
    private let showButton = UserButton(title: "Show New User", backgroundColor: .red, shouldHaveShadow: false)
    private let hideButton = UserButton(title: "Hide User", backgroundColor: .green, shouldHaveShadow: true)
    
    private let textLabel = UILabel()
    private let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.alpha = 0.9
        setupUser()
        
        setupUILabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
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
        textLabel.textColor = .white
    }
    
    private func setupStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.spacing = 10
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(showButton)
        stackView.addArrangedSubview(hideButton)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

