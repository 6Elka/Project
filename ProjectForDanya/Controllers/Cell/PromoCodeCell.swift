//
//  PromoCodeCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

final class PromoCell: UICollectionViewCell {
    
    static let cell = "Promo"
    
    private let separatorView = UIView().createView(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let promoButton = UIButton().createButton(title: "Промокод", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), corner: 20)
    private let specialOffer = UILabel().createLabel(title: "Дарим промокод", name:  "Ubuntu-Medium", size: 16, textColor: .black, alignment: .left)
    private let descriptionSales = UILabel().createLabel(title: "Дарим промо-код на следующую покупку. Код действует до 24 мая. Успейте воспользоваться! =)", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), alignment: .left)
    private let promoURL = UILabel().createLabel(title: "UR-29375", name:  "Ubuntu-Medium", size: 16, textColor: .black, alignment: .left)
    private let dataLabel = UILabel().createLabel(title: "4 марта 23:00", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .left)
    private let copyDoc = UIImageView().createImage(systemName: "doc.on.doc", color: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), corner: nil)
    
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
        setPromoBtn()
        setSpecialOffer()
        setDescriptionSales()
        setPromoURL()
        setCopyDoc()
        setDataLabel()
    }
    
    private func setSeparatorView() {
        addSubview(separatorView)
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setPromoBtn() {
        addSubview(promoButton)
        NSLayoutConstraint.activate([
            promoButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            promoButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            promoButton.widthAnchor.constraint(equalToConstant: 100),
            promoButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setSpecialOffer() {
        addSubview(specialOffer)
        NSLayoutConstraint.activate([
            specialOffer.topAnchor.constraint(equalTo: promoButton.bottomAnchor, constant: 20),
            specialOffer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setDescriptionSales() {
        addSubview(descriptionSales)
        NSLayoutConstraint.activate([
            descriptionSales.topAnchor.constraint(equalTo: specialOffer.bottomAnchor, constant: 10),
            descriptionSales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionSales.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    
    private func setPromoURL() {
        addSubview(promoURL)
        NSLayoutConstraint.activate([
            promoURL.topAnchor.constraint(equalTo: descriptionSales.bottomAnchor, constant: 10),
            promoURL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setCopyDoc() {
        addSubview(copyDoc)
        NSLayoutConstraint.activate([
            copyDoc.leadingAnchor.constraint(equalTo: promoURL.trailingAnchor,constant: 10),
            copyDoc.topAnchor.constraint(equalTo: descriptionSales.bottomAnchor, constant: 10),
            copyDoc.widthAnchor.constraint(equalToConstant: 20),
            copyDoc.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataLabel)
        NSLayoutConstraint.activate([
            dataLabel.topAnchor.constraint(equalTo: promoURL.bottomAnchor, constant: 10),
            dataLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
}
