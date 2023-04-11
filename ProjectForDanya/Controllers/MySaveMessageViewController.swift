//
//  ThirdViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

final class MySaveMessageViewController: UIViewController {

    private let backButton = UIButton()
    private let titleMessage = UILabel()
    private let letterImage = UIImageView()
    private let myMessageLabel = UILabel()
    private let importantMessage = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intialize()
    }
    
    private func intialize() {
        view.backgroundColor = .white
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
  
        setBackButton()
        setTitleLabel()
        setMessageImage()
        setMyMessage()
        setImportantMessage()
    }
    
    private func setBackButton() {
        view.addSubview(backButton)
        backButton.setTitle("Закрыть", for: .normal)
        backButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        backButton.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        backButton.layer.cornerRadius = 10
        backButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 80),
            backButton.heightAnchor.constraint(equalToConstant: 20)
            ])
    }
    
    private func setTitleLabel() {
        view.addSubview(titleMessage)
        titleMessage.text = "Cообщения"
        titleMessage.font = .init(name: "Ubuntu-Medium", size: 16)
        titleMessage.textColor = .black
        titleMessage.textAlignment = .center
        titleMessage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleMessage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            titleMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
    }
    
    private func setMessageImage() {
        view.addSubview(letterImage)
        letterImage.image = UIImage(systemName: "envelope.badge")?.withTintColor(#colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), renderingMode: .alwaysOriginal)
        letterImage.contentMode = .scaleAspectFill
        letterImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            letterImage.topAnchor.constraint(equalTo: titleMessage.bottomAnchor, constant: 100),
            letterImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            letterImage.heightAnchor.constraint(equalToConstant: 100),
            letterImage.widthAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    private func setMyMessage() {
        view.addSubview(myMessageLabel)
        myMessageLabel.text = "Ваши сообщения"
        myMessageLabel.font = .init(name: "Ubuntu-Bold", size: 26)
        myMessageLabel.textColor = .black
        myMessageLabel.textAlignment = .center
        myMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myMessageLabel.topAnchor.constraint(equalTo: letterImage.bottomAnchor, constant: 20),
            myMessageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
    }
    
    private func setImportantMessage() {
        view.addSubview(importantMessage)
        importantMessage.text = "Здесь будут появляться все важные уведомления по вашим заказам, электронные чеки по покупкам в офлайн-магазинах, а также специальные предложения"
        importantMessage.font = .init(name: "Ubuntu-Medium", size: 16)
        importantMessage.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        importantMessage.numberOfLines = 0
        importantMessage.textAlignment = .center
        importantMessage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            importantMessage.topAnchor.constraint(equalTo: myMessageLabel.bottomAnchor, constant: 15),
            importantMessage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            importantMessage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            importantMessage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            ])
    }
    
    @objc func back() {
        dismiss(animated: true)
    }
}
