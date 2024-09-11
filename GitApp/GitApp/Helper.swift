//
//  Helper.swift
//  GitApp
//
//  Created by Полина Соколова on 11.09.24.
//

import Foundation

class Helper {
    private var people: [Person] = []
    
    func addPerson(_ person: Person) {
        people.append(person)
    }
    
    func listPeople() -> [Person] {
        people
    }
}
