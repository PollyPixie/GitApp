//
//  ViewController.swift
//  GitApp
//
//  Created by Полина Соколова on 10.09.24.
//

import UIKit

class ViewController: UIViewController {
    let name = "Полина"
    let lastName = "Соколова"
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(fullName).")
    }
}


