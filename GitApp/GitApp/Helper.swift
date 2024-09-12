//
//  Helper.swift
//  GitApp
//
//  Created by Полина Соколова on 11.09.24.
//

import Foundation

class Helper {
    
    private var users: [User] = []
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func listUsers() -> [User] {
        users
    }
}
