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
    
    private let separatorView = UIView()
    private let newButton = UIButton()
    private let promotionButton = UIButton()
    private let specialOffer = UILabel()
    private let descriptionSales = UILabel()
    private let dataOfPromotion = UILabel()
    private let detailButton = UIButton()
    
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
        separatorView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
            ])
    }
    
    private func setNewButton() {
        addSubview(newButton)
        newButton.setTitle("Новое", for: .normal)
        newButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        newButton.setTitleColor(.white, for: .normal)
        newButton.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        newButton.layer.cornerRadius = 20
        newButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            newButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            newButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            newButton.widthAnchor.constraint(equalToConstant: 80),
            newButton.heightAnchor.constraint(equalToConstant: 40),
            ])
    }
    
    private func setSalesButton() {
        addSubview(promotionButton)
        promotionButton.setTitle("Акция", for: .normal)
        promotionButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        promotionButton.setTitleColor(.white, for: .normal)
        promotionButton.backgroundColor = #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        promotionButton.layer.cornerRadius = 20
        promotionButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            promotionButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            promotionButton.leadingAnchor.constraint(equalTo: newButton.trailingAnchor, constant: 10),
            promotionButton.heightAnchor.constraint(equalToConstant: 40),
            promotionButton.widthAnchor.constraint(equalToConstant: 80),
        ])
    }
      
    private func setSpecialOffer() {
        addSubview(specialOffer)
        specialOffer.text = "Специальное предложение по вашей карте лояльности"
        specialOffer.font = .init(name: "Ubuntu-Medium", size: 16)
        specialOffer.textColor = .black
        specialOffer.textAlignment = .left
        specialOffer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            specialOffer.topAnchor.constraint(equalTo: promotionButton.bottomAnchor, constant: 15),
            specialOffer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            specialOffer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
        
    private func setDescriptionSales() {
        addSubview(descriptionSales)
        descriptionSales.text = "Скидка 10% на доставку любимых товаров в день покупки, 24-25 августа"
        descriptionSales.font = .init(name: "Ubuntu-Medium", size: 15)
        descriptionSales.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        descriptionSales.textAlignment = .left
        descriptionSales.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionSales.topAnchor.constraint(equalTo: specialOffer.bottomAnchor, constant: 10),
            descriptionSales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionSales.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataOfPromotion)
        dataOfPromotion.text = "4 марта 23:00"
        dataOfPromotion.font = .init(name: "Ubuntu-Medium", size: 15)
        dataOfPromotion.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dataOfPromotion.textAlignment = .left
        dataOfPromotion.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
             dataOfPromotion.topAnchor.constraint(equalTo: descriptionSales.bottomAnchor, constant: 10),
             dataOfPromotion.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
          
    private func setDetailBtn() {
        addSubview(detailButton)
        detailButton.setTitle("Подробнее", for: .normal)
        detailButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        detailButton.setTitleColor(.white, for: .normal)
        detailButton.backgroundColor = #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        detailButton.layer.cornerRadius = 10
        detailButton.translatesAutoresizingMaskIntoConstraints = false
  
        NSLayoutConstraint.activate([
            detailButton.topAnchor.constraint(equalTo: dataOfPromotion.bottomAnchor, constant: 20),
            detailButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailButton.widthAnchor.constraint(equalToConstant: 150),
            detailButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
