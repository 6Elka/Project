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
    
    private let separatorView = UIView().createView(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let image = UIImageView().createImage(systemName: "beauty", color: nil, corner: 15)
    private let salesButton = UIButton().createButton(title: "Акция", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 20)
    private let gifSales = UILabel().createLabel(title: "Дарим скидку -50%", name: "Ubuntu-Medium", size: 16, textColor: .black, alignment: .left)
    private let descriptionGif = UILabel().createLabel(title: "Дарим скидку на следующую покупку! -50% все! Действует 1 день.", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) , alignment: .left)
    private let dataLabel = UILabel().createLabel(title: "4 марта 23:00", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .left)
    private let detailButton = UIButton().createButton(title: "Подробнее", name: "Ubuntu-Medium", size: 16, titleColor: .white, systemImage: nil, background: #colorLiteral(red: 0.9015665756, green: 0.02745098062, blue: 0.3333333433, alpha: 1), corner: 10)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        backgroundColor = .white
        image.backgroundColor = .red
        
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
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
    
    private func setImage() {
        addSubview(image)
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 20),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            image.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setSalesButton() {
        addSubview(salesButton)
        NSLayoutConstraint.activate([
            salesButton.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            salesButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            salesButton.widthAnchor.constraint(equalToConstant: 80),
            salesButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
    private func setGifSales() {
        addSubview(gifSales)
        NSLayoutConstraint.activate([
            gifSales.topAnchor.constraint(equalTo: salesButton.bottomAnchor, constant: 10),
            gifSales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
      
    private func setDescriptionGif() {
        addSubview(descriptionGif)
        NSLayoutConstraint.activate([
            descriptionGif.topAnchor.constraint(equalTo: gifSales.bottomAnchor, constant: 10),
            descriptionGif.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionGif.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        ])
    }
    
    private func setDataLabel() {
        addSubview(dataLabel)
        NSLayoutConstraint.activate([
            dataLabel.topAnchor.constraint(equalTo: descriptionGif.bottomAnchor, constant: 10),
            dataLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }
    
    private func setDetailButton() {
        addSubview(detailButton)
        NSLayoutConstraint.activate([
            detailButton.topAnchor.constraint(equalTo: dataLabel.bottomAnchor, constant: 10),
            detailButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            detailButton.widthAnchor.constraint(equalToConstant: 150),
            detailButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
