//
//  UserRepository.swift
//  GitApp
//
//  Created by Полина Соколова on 18.09.24.
//

import Foundation

class UserRepository {
    func fetchUsers() -> [User] {
        let userOne = User(login: "john48", password: "g73jd9", name: "John", lastName: "Lee")
        let userTwo = User(login: "eva@sm", password: "t65f98", name: "Eva", lastName: "Smith")
        
        return [userOne, userTwo]
    }
}
