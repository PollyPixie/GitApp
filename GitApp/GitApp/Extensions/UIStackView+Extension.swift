//
//  UIStackView+Extension.swift
//  GitApp
//
//  Created by Полина Соколова on 05.10.24.
//

import UIKit

extension UIStackView {
   
    func addArrangedSubviews(_ views: UIView...) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}

