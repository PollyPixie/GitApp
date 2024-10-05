//
//  Person.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import Foundation

struct Person {
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

struct User {
    let login: String
    let password: String
    let person: Person
    
    init(login: String, password: String, name: String, lastName: String) {
        self.login = login
        self.password = password
        self.person = Person(name: name, lastName: lastName)
    }
}
