//
//  SecondViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

//MARK: - SecondViewController
final class ReloadViewController: UIViewController {

    private let backButton = UIButton()
    private let titleMessage = UILabel()
    private let handStop = UIImageView()
    private let fallDownloadLabel = UILabel()
    private let descriptionFall = UILabel()
    private let reloadButton = UIButton()
    private let goToMainWindow = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intialize()
    }
    
    private func intialize() {
        view.backgroundColor = .white
        
        setBackButton()
        setTitleLabel()
        setWarningImage()
        setFallDownLabel()
        setDescriptionFall()
        setReloadButton()
        setGoToMain()
    }
    
    private func setBackButton() {
        view.addSubview(backButton)
        backButton.setTitle("Закрыть", for: .normal)
        backButton.titleLabel?.font = UIFont(name: "Ubuntu-Medium", size: 16)
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
      
    private func setWarningImage() {
        view.addSubview(handStop)
        handStop.image = UIImage(systemName: "hand.raised.slash.fill")?.withTintColor( #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), renderingMode: .alwaysOriginal)
        handStop.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            handStop.topAnchor.constraint(equalTo: titleMessage.bottomAnchor, constant: 100),
            handStop.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            handStop.widthAnchor.constraint(equalToConstant: 100),
            handStop.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
        
    private func setFallDownLabel() {
        view.addSubview(fallDownloadLabel)
        fallDownloadLabel.text = "Не удалось загрузить страницу"
        fallDownloadLabel.font = .init(name: "Ubuntu-Bold", size: 25)
        fallDownloadLabel.textColor = .black
        fallDownloadLabel.numberOfLines = 0
        fallDownloadLabel.textAlignment = .center
        fallDownloadLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fallDownloadLabel.topAnchor.constraint(equalTo: handStop.bottomAnchor, constant: 20),
            fallDownloadLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fallDownloadLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
            
    private func setDescriptionFall() {
        view.addSubview(descriptionFall)
        descriptionFall.text = "Мы работаем над исправлением ошибки"
        descriptionFall.font = .init(name: "Ubuntu-Medium", size: 16)
        descriptionFall.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        descriptionFall.textAlignment = .center
        descriptionFall.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionFall.topAnchor.constraint(equalTo: fallDownloadLabel.bottomAnchor, constant: 10),
            descriptionFall.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
            
    private func setReloadButton() {
        view.addSubview(reloadButton)
        reloadButton.setTitle("Перегрузить страницу", for: .normal)
        reloadButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        reloadButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        reloadButton.backgroundColor = #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        reloadButton.layer.cornerRadius = 10
        reloadButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            reloadButton.topAnchor.constraint(equalTo: descriptionFall.bottomAnchor, constant: 15),
            reloadButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            reloadButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            reloadButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
        
    private func setGoToMain() {
        view.addSubview(goToMainWindow)
        goToMainWindow.setTitle("Перейти на главную", for: .normal)
        goToMainWindow.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        goToMainWindow.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        goToMainWindow.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            goToMainWindow.topAnchor.constraint(equalTo: reloadButton.bottomAnchor, constant: 20),
            goToMainWindow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToMainWindow.heightAnchor.constraint(equalToConstant: 20),
            goToMainWindow.widthAnchor.constraint(equalToConstant: 175)
        ])
    }
    
    @objc func back() {
        dismiss(animated: true)
    }
}
