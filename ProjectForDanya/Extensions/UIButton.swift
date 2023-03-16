//
//  UIButton.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

extension UIButton {
    func createButton(title: String, name: String, size: CGFloat, titleColor: UIColor, systemImage: String?, background: UIColor?, corner: CGFloat?) -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = corner ?? 0
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.setImage(UIImage(systemName: systemImage ?? ""), for: .normal)
        button.titleLabel?.font = .init(name: name, size: size)
        button.backgroundColor = background ?? nil
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
