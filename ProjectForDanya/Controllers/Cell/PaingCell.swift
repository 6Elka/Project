//
//  PaingCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

final class PaingCell: UICollectionViewCell {
    
    static let cell = "Paing"
    
    public func configure(paing: PaingEntity) {
        self.openButton.setTitle(paing.openButton, for: .normal)
        self.getCheck.text = paing.getCheck
        self.descriptionOfOrder.setTitle(paing.descriptionOfOrder, for: .normal)
        self.dataOfCheck.text = paing.dataOfCheck
    }

    private let separatorView = UIView()
    private let getCheck = UILabel()
    private let dataOfCheck = UILabel()
    private let openButton = UIButton()
    private let descriptionOfOrder = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        backgroundColor = .white
        setSeparatorView()
        setGetCheck()
        setDataLabel()
        setOrder()
        setOpenButton()
    }
    
    private func setSeparatorView() {
        addSubview(separatorView)
        separatorView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
            ])
    }
        
    private func setDataLabel() {
        addSubview(dataOfCheck)
        dataOfCheck.font = .init(name: "Ubuntu-Medium", size: 15)
        dataOfCheck.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dataOfCheck.textAlignment = .left
        dataOfCheck.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dataOfCheck.topAnchor.constraint(equalTo: getCheck.bottomAnchor, constant: 10),
            dataOfCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ])
    }
    
    private func setGetCheck() {
        addSubview(getCheck)
        getCheck.font = .init(name: "Ubuntu-Medium", size: 15)
        getCheck.textAlignment = .left
        getCheck.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        getCheck.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            getCheck.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            getCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            getCheck.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            ])
    }
    
    private func setOrder() {
        addSubview(descriptionOfOrder)
        descriptionOfOrder.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        descriptionOfOrder.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        descriptionOfOrder.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            descriptionOfOrder.topAnchor.constraint(equalTo: dataOfCheck.bottomAnchor, constant: 20),
            descriptionOfOrder.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setOpenButton() {
        addSubview(openButton)
        openButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        openButton.setTitleColor(.white, for: .normal)
        openButton.backgroundColor = #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        openButton.layer.cornerRadius = 10
        openButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            openButton.topAnchor.constraint(equalTo: descriptionOfOrder.bottomAnchor, constant: 10),
            openButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            openButton.widthAnchor.constraint(equalToConstant: 150),
            openButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    @objc private func activIndicator() {
        print("LOAD...")
    }
}
