//
//  ViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

enum Login: Int {
    case one
    case two
    case three
}

final class ViewController: UIViewController {
    
    private var isSecury = true
    private var login = Login.one

    private let button = UIButton().createButton(title: "TAP", name: "", size: 16, titleColor: .black, systemImage: nil, background: nil, corner: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.addSubview(button)
        button.addTarget(self, action: #selector(changeWindow), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    @objc private func changeWindow() {
     
            switch login {
            case .one:
                present(ReloadViewController(), animated: true)
                login = .two
            case .two:
                present(MySaveMessageViewController(), animated: true)
                login = .three
            case .three:
                present(OrderViewController(), animated: true)
                login = .one
            }
        }
    
}

