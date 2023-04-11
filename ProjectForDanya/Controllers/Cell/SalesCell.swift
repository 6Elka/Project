//
//  SalesCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

final class SalesCell: UICollectionViewCell {
    
    static let cell = "Sales"
    private let separatorView = UIView().createView(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let newButton = UIButton().createButton(title: "Новое", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), corner: 20)
    private let salesButton = UIButton().createButton(title: "Акция", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 20)
    private let specialOffer = UILabel().createLabel(title: "Специальное предложение по вашей карте лояльности", name:  "Ubuntu-Medium", size: 16, textColor: .black, alignment: .left)
    private let descriptionSales = UILabel().createLabel(title: "Скидка 10% на доставку любимых товаров в день покупки, 24-25 августа", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), alignment: .left)
    private let dataLabel = UILabel().createLabel(title: "4 марта 23:00", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .left)
    private let detailButton = UIButton().createButton(title: "Подробнее", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 10)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
       initialize()
    }
    
    private func initialize() {
        setSeparatorView()
        setNewButton()
        setSalesButton()
        setSpecialOffer()
        setDescriptionSales()
        setDataLabel()
        setDetailBtn()
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
    
    private func setNewButton() {
        addSubview(newButton)
        NSLayoutConstraint.activate([
            newButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            newButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            newButton.widthAnchor.constraint(equalToConstant: 80),
            newButton.heightAnchor.constraint(equalToConstant: 40),
            ])
    }
    
    private func setSalesButton() {
        addSubview(salesButton)
        NSLayoutConstraint.activate([
            salesButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            salesButton.leadingAnchor.constraint(equalTo: newButton.trailingAnchor, constant: 10),
            salesButton.heightAnchor.constraint(equalToConstant: 40),
            salesButton.widthAnchor.constraint(equalToConstant: 80),
        ])
    }
      
    private func setSpecialOffer() {
        addSubview(specialOffer)
        NSLayoutConstraint.activate([
            specialOffer.topAnchor.constraint(equalTo: salesButton.bottomAnchor, constant: 15),
            specialOffer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            specialOffer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
        
    private func setDescriptionSales() {
        addSubview(descriptionSales)
        NSLayoutConstraint.activate([
            descriptionSales.topAnchor.constraint(equalTo: specialOffer.bottomAnchor, constant: 10),
            descriptionSales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionSales.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataLabel)
        NSLayoutConstraint.activate([
             dataLabel.topAnchor.constraint(equalTo: descriptionSales.bottomAnchor, constant: 10),
             dataLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
          
    private func setDetailBtn() {
        addSubview(detailButton)
        NSLayoutConstraint.activate([
            detailButton.topAnchor.constraint(equalTo: dataLabel.bottomAnchor, constant: 20),
            detailButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailButton.widthAnchor.constraint(equalToConstant: 150),
            detailButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
