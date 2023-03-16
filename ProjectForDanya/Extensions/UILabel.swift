//
//  UILabel.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

extension UILabel {
    func createLabel(title: String, name: String, size: CGFloat, textColor: UIColor, alignment: NSTextAlignment) -> UILabel {
        let label = UILabel()
        label.font = .init(name: name, size: size)
        label.text = title
        label.textColor = textColor
        label.numberOfLines = 0
        label.textAlignment = alignment
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
