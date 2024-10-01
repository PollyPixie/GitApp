//
//  UserButton.swift
//  GitApp
//
//  Created by Полина Соколова on 27.09.24.
//

import UIKit

class UserButton: UIButton {
    private var shouldHaveShadow: Bool

    init(title: String, backgroundColor: UIColor, shouldHaveShadow: Bool) {
        self.shouldHaveShadow = shouldHaveShadow
        super.init(frame: .zero)
        setupButton(title: title, backgroundColor: backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
    
    private func setupButton(title: String, backgroundColor: UIColor) {
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)
        self.backgroundColor = backgroundColor

        if shouldHaveShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 5, height: 5)
            layer.shadowOpacity = 0.7
            layer.shadowRadius = 10
        }
    }
}
