//
//  Person.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import Foundation

class Person {
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
}
