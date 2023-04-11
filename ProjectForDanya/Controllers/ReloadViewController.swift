//
//  SecondViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

//MARK: - SecondViewController
final class ReloadViewController: UIViewController {

    private let backButton = UIButton().createButton(title: "Закрыть", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: 10)
    private let titleLabel = UILabel().createLabel(title: "Cообщения", name: "Ubuntu-Medium", size: 16, textColor: .black, alignment: .center)
    private let warningImage = UIImageView().createImage(systemName: "hand.raised.slash.fill", color: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: nil)
    private let fallDownloadLabel = UILabel().createLabel(title: "Не удалось загрузить страницу", name: "Ubuntu-Bold", size: 25, textColor: .black, alignment: .center)
    private let descriptionFall = UILabel().createLabel(title: "Мы работаем над исправлением ошибки", name: "Ubuntu-Medium", size: 16, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .center)
    private let reloadButton = UIButton().createButton(title: "Перегрузить страницу", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 10)
    private let goToMainWindow = UIButton().createButton(title: "Перейти на главную", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: nil)
    
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

        view.addSubview(reloadButton)
        view.addSubview(goToMainWindow)
        
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
      
    private func setWarningImage() {
        view.addSubview(warningImage)
        NSLayoutConstraint.activate([
            warningImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 100),
            warningImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            warningImage.widthAnchor.constraint(equalToConstant: 100),
            warningImage.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
        
    private func setFallDownLabel() {
        view.addSubview(fallDownloadLabel)
        NSLayoutConstraint.activate([
            fallDownloadLabel.topAnchor.constraint(equalTo: warningImage.bottomAnchor, constant: 20),
            fallDownloadLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fallDownloadLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
            
    private func setDescriptionFall() {
        view.addSubview(descriptionFall)
        NSLayoutConstraint.activate([
            descriptionFall.topAnchor.constraint(equalTo: fallDownloadLabel.bottomAnchor, constant: 10),
            descriptionFall.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
        ])
    }
            
    private func setReloadButton() {
        view.addSubview(reloadButton)
        NSLayoutConstraint.activate([
            reloadButton.topAnchor.constraint(equalTo: descriptionFall.bottomAnchor, constant: 15),
            reloadButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            reloadButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            reloadButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
        
    private func setGoToMain() {
        view.addSubview(goToMainWindow)
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
