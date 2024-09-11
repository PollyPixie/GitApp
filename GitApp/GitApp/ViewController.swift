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
        
        let personOne = Person(name: "John", lastName: "Lee")
        let personTwo = Person(name: "Eva", lastName: "Smith")
        
        helper.addPerson(personOne)
        helper.addPerson(personTwo)
        
        for person in helper.listPeople() {
            print("Мy name is \(person.fullName).")
        }
    }
}

