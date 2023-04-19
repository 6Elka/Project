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
    
    public func configure(promo: PromoEntity) {
        self.promoURL.text = promo.promoURL
        self.imgURL.image =  UIImage(systemName: promo.imgURL ?? "")?.withTintColor( #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), renderingMode: .alwaysOriginal)
        self.descriptionOffer.text = promo.descriptionOffer
        self.specialOffer.text = promo.specialOffer
        self.dataOfPromo.text = promo.dataOfPromo
        self.promoButton.setTitle(promo.promo, for: .normal)
    }
    
    private let separatorView = UIView()
    private let promoButton = UIButton()
    private let specialOffer = UILabel()
    private let descriptionOffer = UILabel()
    private let promoURL = UILabel()
    private let dataOfPromo = UILabel()
    private let imgURL = UIImageView()
    
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
        separatorView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setPromoBtn() {
        addSubview(promoButton)
        promoButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        promoButton.setTitleColor(.white, for: .normal)
        promoButton.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        promoButton.layer.cornerRadius = 20
        promoButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            promoButton.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            promoButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            promoButton.widthAnchor.constraint(equalToConstant: 100),
            promoButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setSpecialOffer() {
        addSubview(specialOffer)
        specialOffer.font = .init(name: "Ubuntu-Medium", size: 16)
        specialOffer.textColor = .black
        specialOffer.textAlignment = .left
        specialOffer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            specialOffer.topAnchor.constraint(equalTo: promoButton.bottomAnchor, constant: 20),
            specialOffer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setDescriptionSales() {
        addSubview(descriptionOffer)
        descriptionOffer.numberOfLines = 0
        descriptionOffer.font = .init(name: "Ubuntu-Medium", size: 15)
        descriptionOffer.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        descriptionOffer.textAlignment = .left
        descriptionOffer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionOffer.topAnchor.constraint(equalTo: specialOffer.bottomAnchor, constant: 10),
            descriptionOffer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionOffer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    
    private func setPromoURL() {
        addSubview(promoURL)
        promoURL.font = .init(name: "Ubuntu-Medium", size: 16)
        promoURL.textColor = .black
        promoURL.textAlignment = .left
        promoURL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            promoURL.topAnchor.constraint(equalTo: descriptionOffer.bottomAnchor, constant: 10),
            promoURL.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    private func setCopyDoc() {
        addSubview(imgURL)
        imgURL.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imgURL.leadingAnchor.constraint(equalTo: promoURL.trailingAnchor,constant: 10),
            imgURL.topAnchor.constraint(equalTo: descriptionOffer.bottomAnchor, constant: 10),
            imgURL.widthAnchor.constraint(equalToConstant: 20),
            imgURL.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataOfPromo)
        dataOfPromo.font = .init(name: "Ubuntu-Medium", size: 15)
        dataOfPromo.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dataOfPromo.textAlignment = .left
        dataOfPromo.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            dataOfPromo.topAnchor.constraint(equalTo: promoURL.bottomAnchor, constant: 10),
            dataOfPromo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
}
