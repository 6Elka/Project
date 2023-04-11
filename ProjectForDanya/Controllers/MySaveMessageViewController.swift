//
//  ThirdViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

final class MySaveMessageViewController: UIViewController {

    private let backButton = UIButton().createButton(title: "Закрыть", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: 10)
    private let titleLabel = UILabel().createLabel(title: "Cообщения", name: "Ubuntu-Medium", size: 16, textColor: .black, alignment: .center)
    private let messageImage = UIImageView().createImage(systemName: "envelope.badge", color: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: nil)
    private let myMessageLabel = UILabel().createLabel(title: "Ваши сообщения", name: "Ubuntu-Bold", size: 26, textColor: .black, alignment: .center)
    private let importantMessage = UILabel().createLabel(title: "Здесь будут появляться все важные уведомления по вашим заказам, электронные чеки по покупкам в офлайн-магазинах, а также специальные предложения", name: "Ubuntu-Medium", size: 16, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .center)
    
    
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
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 80),
            backButton.heightAnchor.constraint(equalToConstant: 20)
            ])
    }
    
    private func setTitleLabel() {
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
    }
    
    private func setMessageImage() {
        view.addSubview(messageImage)
        NSLayoutConstraint.activate([
            messageImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100),
            messageImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            messageImage.heightAnchor.constraint(equalToConstant: 100),
            messageImage.widthAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    private func setMyMessage() {
        view.addSubview(myMessageLabel)
        NSLayoutConstraint.activate([
            myMessageLabel.topAnchor.constraint(equalTo: messageImage.bottomAnchor, constant: 20),
            myMessageLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ])
    }
    
    private func setImportantMessage() {
        view.addSubview(importantMessage)
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
