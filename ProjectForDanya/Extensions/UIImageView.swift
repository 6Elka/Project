//
//  UIImageVIew.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

extension UIImageView {
    func createImage(systemName: String?, color: UIColor?, corner: CGFloat?) -> UIImageView {
        let image = UIImageView()
        image.image = UIImage(systemName: systemName ?? "")?.withTintColor(color ?? .white, renderingMode: .alwaysOriginal) ?? UIImage(named: systemName ?? "")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = corner ?? 0
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }
}
