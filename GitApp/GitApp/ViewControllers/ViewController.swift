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
        view.addSubviews(stackView)
        addAction()
        
        setupLayout()
    }
    
    @objc
    private func showButtonTapped() {
        textLabel.text = helper.getRandomName()
    }
}

// MARK: - Setup User
extension ViewController {
    private func setupUser() {
        let users = userRepository.fetchUsers()
        
        helper.addUsers(users)
        
        for user in helper.listUsers() {
            print("Мy name is \(user.person.fullName).")
        }
    }
}

// MARK: - Setup View
private extension ViewController {
    func addAction() {
        showButton.addTarget(
            self,
            action: #selector(showButtonTapped),
            for: .touchUpInside
        )
        
        let action = UIAction { _ in
            self.textLabel.text = ""
        }
        hideButton.addAction(action, for: .touchUpInside)
    }
    
    func setupUILabel() {
        textLabel.text = helper.listUsers().randomElement()?.person.fullName
        textLabel.font = .systemFont(ofSize: 25, weight: .bold)
        textLabel.textColor = .white
    }
    
    func setupStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .center
        stackView.spacing = 10
        
        stackView.addArrangedSubviews(textLabel, showButton, hideButton)
    }
}

// MARK: - Setup Layout
extension ViewController {
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

