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

    
    private let separatorView = UIView().createView(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let getCheck = UILabel().createLabel(title: "Получен кассовый чек на сумму 186 р для заказа 405916", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), alignment: .left)
    private let dataLabel = UILabel().createLabel(title: "4 марта 23:00", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .left)
    private let openButton = UIButton().createButton(title: "Открыть чек", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 10)
    private let order = UIButton().createButton(title: "Подробности заказа", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: nil)
    
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
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
            ])
    }
        
    private func setDataLabel() {
        addSubview(dataLabel)
        NSLayoutConstraint.activate([
            dataLabel.topAnchor.constraint(equalTo: getCheck.bottomAnchor, constant: 10),
            dataLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            ])
    }
    
    private func setGetCheck() {
        addSubview(getCheck)
        NSLayoutConstraint.activate([
            getCheck.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            getCheck.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            getCheck.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -20),
            ])
    }
    
    private func setOrder() {
        addSubview(order)
        NSLayoutConstraint.activate([
            order.topAnchor.constraint(equalTo: dataLabel.bottomAnchor, constant: 20),
            order.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setOpenButton() {
        addSubview(openButton)
        NSLayoutConstraint.activate([
            openButton.topAnchor.constraint(equalTo: order.bottomAnchor, constant: 10),
            openButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            openButton.widthAnchor.constraint(equalToConstant: 150),
            openButton.heightAnchor.constraint(equalToConstant: 40),
        
        ])
    }
    @objc private func activIndicator() {
        print("LOAD...")
    }
}
