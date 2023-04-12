//
//  BottomViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 12/04/2023.
//

import UIKit

enum Event {
    case gointToClose
    case closed
}

class BottomViewController: UIViewController {

    public var event: Event = .gointToClose
    private let cancelView = UIView()
    private let cancelButton = UIButton()
    private let titleGoingToClose = UILabel()
    private let descriptionOrder = UILabel()
    private let agreeButton = UIButton()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        cancelView.layer.cornerRadius = cancelView.frame.width / 2
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.isUserInteractionEnabled = true
        view.backgroundColor = .white
        setCancelView()
        setCancelButton()
        setTitle()
        setDescription()
        setAgreeButton()
    }
    private func setCancelView() {
        view.addSubview(cancelView)
        cancelView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        cancelView.isUserInteractionEnabled = true
        cancelView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cancelView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            cancelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            cancelView.widthAnchor.constraint(equalToConstant: 30),
            cancelView.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    private func setCancelButton() {
        cancelView.addSubview(cancelButton)
        cancelButton.isUserInteractionEnabled = true
        cancelButton.setImage(UIImage(systemName: "multiply")?.withTintColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), renderingMode: .alwaysOriginal), for: .normal)
        cancelButton.addTarget(self, action: #selector(skip), for: .touchUpInside)
        cancelButton.titleLabel?.font = .systemFont(ofSize: 15, weight: .bold)
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cancelButton.centerXAnchor.constraint(equalTo: cancelView.centerXAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: cancelView.centerYAnchor),
            cancelButton.heightAnchor.constraint(equalToConstant: 15),
            cancelButton.widthAnchor.constraint(equalToConstant: 15)
        ])
    }
    private func setTitle() {
        view.addSubview(titleGoingToClose)
        switch event {
        case .gointToClose:
            titleGoingToClose.text = "Мы скоро закроемся"
        case .closed:
            titleGoingToClose.text = "Mы уже закрылись"
        }
        titleGoingToClose.font = .systemFont(ofSize: 25, weight: .semibold)
        titleGoingToClose.textColor = .black
        titleGoingToClose.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleGoingToClose.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            titleGoingToClose.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
    }
    private func setDescription() {
        view.addSubview(descriptionOrder)
        switch event {
        case .gointToClose:
            descriptionOrder.text = "Если хотите оформить заказ, стоит поторопиться"
        case .closed:
            descriptionOrder.text = "Можно офрмить заказ и забрать его через час после открытия магазина"
        }
        descriptionOrder.textColor = .black
        descriptionOrder.numberOfLines = 0
        descriptionOrder.font = .systemFont(ofSize: 15, weight: .regular)
        descriptionOrder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionOrder.topAnchor.constraint(equalTo: titleGoingToClose.bottomAnchor, constant: 20),
            descriptionOrder.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionOrder.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    private func setAgreeButton() {
        view.addSubview(agreeButton)
        agreeButton.setTitle("Понятно", for: .normal)
        agreeButton.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        agreeButton.layer.cornerRadius = 10
        agreeButton.addTarget(self, action: #selector(skip), for: .touchUpInside)
        agreeButton.setTitleColor(.white, for: .normal)
        agreeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            agreeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            agreeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            agreeButton.heightAnchor.constraint(equalToConstant: 50),
            agreeButton.topAnchor.constraint(equalTo: descriptionOrder.bottomAnchor, constant: 40)
        ])
    }

    @objc private func skip() {
        print("TAP")
       dismiss(animated: true)
    }
}

