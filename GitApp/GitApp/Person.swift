//
//  Person.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import Foundation

class Person {
    let name = "Полина"
    let lastName = "Соколова"
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}
