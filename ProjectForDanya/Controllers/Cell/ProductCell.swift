//
//  ProductCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

final class ProductCell: UICollectionViewCell {
    
    static let cell = "Product"
    
    private let separatorView = UIView()
    private let imageOfProduct = UIImageView()
    private let promotionOfButton = UIButton()
    private let gifSales = UILabel()
    private let descriptionGif = UILabel()
    private let dataOfGif = UILabel()
    private let detailButton = UIButton()

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
        setImage()
        setSalesButton()
        setGifSales()
        setDescriptionGif()
        setDataLabel()
        setDetailButton()    
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
    
    private func setImage() {
        addSubview(imageOfProduct)
        imageOfProduct.image = UIImage(named: "beauty")
        imageOfProduct.clipsToBounds = true
        imageOfProduct.layer.cornerRadius = 15
        imageOfProduct.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageOfProduct.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            imageOfProduct.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            imageOfProduct.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imageOfProduct.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setSalesButton() {
        addSubview(promotionOfButton)
        promotionOfButton.setTitle("Акция", for: .normal)
        promotionOfButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        promotionOfButton.setTitleColor(.white, for: .normal)
        promotionOfButton.backgroundColor = #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        promotionOfButton.layer.cornerRadius = 20
        promotionOfButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            promotionOfButton.topAnchor.constraint(equalTo: imageOfProduct.bottomAnchor, constant: 20),
            promotionOfButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            promotionOfButton.widthAnchor.constraint(equalToConstant: 80),
            promotionOfButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
    private func setGifSales() {
        addSubview(gifSales)
        gifSales.text = "Дарим скидку -50%"
        gifSales.font = .init(name: "Ubuntu-Medium", size: 16)
        gifSales.textColor = .black
        gifSales.textAlignment = .left
        gifSales.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            gifSales.topAnchor.constraint(equalTo: promotionOfButton.bottomAnchor, constant: 10),
            gifSales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
      
    private func setDescriptionGif() {
        addSubview(descriptionGif)
        descriptionGif.text = "Дарим скидку на следующую покупку! -50% все! Действует 1 день."
        descriptionGif.font = .init(name: "Ubuntu-Medium", size: 15)
        descriptionGif.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        descriptionGif.textAlignment = .left
        descriptionGif.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionGif.topAnchor.constraint(equalTo: gifSales.bottomAnchor, constant: 10),
            descriptionGif.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionGif.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataOfGif)
        dataOfGif.text = "4 марта 23:00"
        dataOfGif.font = .init(name: "Ubuntu-Medium", size: 15)
        dataOfGif.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dataOfGif.textAlignment = .left
        dataOfGif.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dataOfGif.topAnchor.constraint(equalTo: descriptionGif.bottomAnchor, constant: 10),
            dataOfGif.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    
    private func setDetailButton() {
        addSubview(detailButton)
        detailButton.setTitle("Подробнее", for: .normal)
        detailButton.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        detailButton.setTitleColor(.white, for: .normal)
        detailButton.backgroundColor =  #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        detailButton.layer.cornerRadius = 10
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            detailButton.topAnchor.constraint(equalTo: dataOfGif.bottomAnchor, constant: 10),
            detailButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailButton.widthAnchor.constraint(equalToConstant: 150),
            detailButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
