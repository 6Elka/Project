//
//  UIRefreshControl.swift
//  ProjectForDanya
//
//  Created by Artem on 16/03/2023.
//

import Foundation
import UIKit

extension UIRefreshControl {
    func createRefresh() -> UIRefreshControl {
        let refresh = UIRefreshControl()
        refresh.translatesAutoresizingMaskIntoConstraints = false
        return refresh
    }
}
