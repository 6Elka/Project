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

enum Bottom: Int {
    case one
    case two
}

final class ViewController: UIViewController {
    
    private var login = Login.one
    private var bottom = Bottom.one
    
    private let button = UIButton()
    private let bottomButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
    }
    
    private func setButton() {
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        setBtn()
        setBottomButton()
    }
    
    private func setBtn() {
        view.addSubview(button)
        button.setTitle("TAP", for: .normal)
        button.titleLabel?.font = UIFont(name: "", size: 16)
        button.setTitleColor(UIColor.black, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(changeWindow), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setBottomButton() {
        view.addSubview(bottomButton)
        bottomButton.setTitle("Bottom", for: .normal)
        bottomButton.titleLabel?.font = UIFont(name: "", size: 16)
        bottomButton.setTitleColor(UIColor.black, for: .normal)
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.addTarget(self, action: #selector(changeBottom), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            bottomButton.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20),
            bottomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            bottomButton.widthAnchor.constraint(equalToConstant: 100),
            bottomButton.heightAnchor.constraint(equalToConstant: 20)
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
    
    @objc private func changeBottom() {
        switch bottom {
        case .one:
            let vc = BottomViewController()
            let navVC = UINavigationController(rootViewController: vc)
            
            if let sheet = navVC.sheetPresentationController {
                sheet.detents = [.custom(resolver: { context in
                    0.3 * context.maximumDetentValue
                })]
            }
            navigationController?.present(navVC, animated: true)
            bottom = .two
        case .two:
            let vc = BottomViewController()
            vc.event = .closed
            let navVC = UINavigationController(rootViewController: vc)
            
            if let sheet = navVC.sheetPresentationController {
                sheet.detents = [.custom(resolver: { context in
                    0.3 * context.maximumDetentValue
                })]
            }
            navigationController?.present(navVC, animated: true)
            bottom = .one
        }
    }
    
    
}
