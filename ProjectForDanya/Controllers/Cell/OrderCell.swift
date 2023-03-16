//
//  OrderCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit

final class OrderCell: UICollectionViewCell {
    
    static let cell = "Cell"
    
    private let separatorView = UIView().createView(color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    private let image = UIImageView().createImage(systemName: "stopwatch", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), corner: nil)
    private let titleLabel = UILabel().createLabel(title: "Заказ 405916", name: "Ubuntu-Medium", size: 16, textColor: .black, alignment: .center)
    private let orderCompleted = UILabel().createLabel(title: "Принят заказ 405916 на сумму 524 р. Доставка по адеру Санкт-Петербург, Московское ш., д. 7, лит. А", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), alignment: .left)
    private let dataLabel = UILabel().createLabel(title: "4 марта 23:00", name: "Ubuntu-Medium", size: 15, textColor: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), alignment: .left)
    private let order = UIButton().createButton(title: "Подробности заказа", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: nil)
 
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
       initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        addSubview(image)
        addSubview(titleLabel)
        addSubview(separatorView)
        addSubview(orderCompleted)
        addSubview(dataLabel)
        addSubview(order)
        
        NSLayoutConstraint.activate([
            separatorView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            separatorView.leadingAnchor.constraint(equalTo: leadingAnchor),
            separatorView.trailingAnchor.constraint(equalTo: trailingAnchor),
            separatorView.heightAnchor.constraint(equalToConstant: 1),
            
            image.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 30),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            image.widthAnchor.constraint(equalToConstant: 40),
            image.heightAnchor.constraint(equalToConstant: 40),
            
            titleLabel.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            
            orderCompleted.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            orderCompleted.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            orderCompleted.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            dataLabel.topAnchor.constraint(equalTo: orderCompleted.bottomAnchor, constant: 10),
            dataLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            
            order.topAnchor.constraint(equalTo: dataLabel.bottomAnchor, constant: 20),
            order.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            order.widthAnchor.constraint(equalToConstant: 160),
            order.heightAnchor.constraint(equalToConstant: 20)

        ])
    }
    
    
}
