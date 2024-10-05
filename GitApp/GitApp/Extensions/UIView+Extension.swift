//
//  UIView+Extension.swift
//  GitApp
//
//  Created by Полина Соколова on 05.10.24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}

