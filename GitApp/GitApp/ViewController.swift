//
//  ViewController.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let person = Person()
        print("Меня зовут \(person.fullName).")
    }
}

