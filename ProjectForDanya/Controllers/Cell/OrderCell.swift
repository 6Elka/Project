//
//  OrderCell.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import Foundation
import UIKit
import CoreData

final class OrderCell: UICollectionViewCell {
    
    static let cell = "Order"
    
    public func configure(order: OrderEntity) {
        self.timerImage.image = UIImage(systemName: order.timerImage ?? "none")?.withTintColor(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), renderingMode: .alwaysOriginal)
        self.numberOfOrder.text = order.numberOfOrder
        self.descriptionOrder.setTitle(order.descriptionOrder ?? "none", for: .normal)
        self.dataOrder.text = order.dataOrder
        self.addressOfOrder.text = order.addressOfOrder
        
    }
    private let order = OrderEntity(context: StorageManager.shared.context)
    private let separatorView = UIView()
    private let timerImage = UIImageView()
    private let numberOfOrder = UILabel()
    private let addressOfOrder = UILabel()
    private let dataOrder = UILabel()
    private let descriptionOrder = UIButton()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        setSeparatorView()
        setImage()
        setTitleLabel()
        setOrderCompleted()
        setDataLabel()
        setOrder()
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
        
    private func setImage() {
        addSubview(timerImage)
        timerImage.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            timerImage.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 30),
            timerImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            timerImage.widthAnchor.constraint(equalToConstant: 40),
            timerImage.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
      
    private func setTitleLabel() {
        addSubview(numberOfOrder)
        numberOfOrder.font = .init(name: "Ubuntu-Medium", size: 16)
        numberOfOrder.textColor = .black
        numberOfOrder.textAlignment = .center
        numberOfOrder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            numberOfOrder.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 30),
            numberOfOrder.leadingAnchor.constraint(equalTo: timerImage.trailingAnchor, constant: 20),
        ])
    }
        
    private func setOrderCompleted() {
        addSubview(addressOfOrder)
        addressOfOrder.numberOfLines = 0
        addressOfOrder.font = .init(name: "Ubuntu-Medium", size: 15)
        addressOfOrder.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        addressOfOrder.textAlignment = .left
        addressOfOrder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addressOfOrder.topAnchor.constraint(equalTo: numberOfOrder.bottomAnchor, constant: 10),
            addressOfOrder.leadingAnchor.constraint(equalTo: timerImage.trailingAnchor, constant: 20),
            addressOfOrder.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
            
    private func setDataLabel() {
        addSubview(dataOrder)
        dataOrder.font = .init(name: "Ubuntu-Medium", size: 15)
        dataOrder.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        dataOrder.textAlignment = .left
        dataOrder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dataOrder.topAnchor.constraint(equalTo: addressOfOrder.bottomAnchor, constant: 10),
            dataOrder.leadingAnchor.constraint(equalTo: timerImage.trailingAnchor, constant: 20),
        ])
    }
    
    private func setOrder() {
        addSubview(descriptionOrder)
        descriptionOrder.titleLabel?.font = .init(name: "Ubuntu-Medium", size: 16)
        descriptionOrder.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        descriptionOrder.translatesAutoresizingMaskIntoConstraints = false
    
        NSLayoutConstraint.activate([
            descriptionOrder.topAnchor.constraint(equalTo: dataOrder.bottomAnchor, constant: 20),
            descriptionOrder.leadingAnchor.constraint(equalTo: timerImage.trailingAnchor, constant: 20),
            descriptionOrder.widthAnchor.constraint(equalToConstant: 160),
            descriptionOrder.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
