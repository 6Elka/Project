//
//  OrderViewController.swift
//  ProjectForDanya
//
//  Created by Artem on 15/03/2023.
//

import UIKit

class OrderViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    private let backButton = UIButton().createButton(title: "Закрыть", name: "Ubuntu-Medium", size: 16, titleColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), systemImage: nil, background: nil, corner: 10)
    private let titleLabel = UILabel().createLabel(title: "Cообщения", name: "Ubuntu-Medium", size: 16, textColor: .black, alignment: .center)
    
    private let items = ["a", "b", "c", "d", "e"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intialize()
    }
   
    private func intialize() {
        
        let someLayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: someLayout)
        
        view.backgroundColor = .white
        view.addSubview(backButton)
        view.addSubview(titleLabel)
        view.addSubview(collectionView)
        
    
        
    
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(OrderCell.self, forCellWithReuseIdentifier: OrderCell.cell)
        collectionView.register(SalesCell.self, forCellWithReuseIdentifier: SalesCell.cell)
        collectionView.register(ProductCell.self, forCellWithReuseIdentifier: ProductCell.cell)
        collectionView.register(PromoCell.self, forCellWithReuseIdentifier: PromoCell.cell)
        collectionView.register(PaingCell.self, forCellWithReuseIdentifier: PaingCell.cell)

        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            backButton.widthAnchor.constraint(equalToConstant: 80),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            collectionView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
    }
    
    @objc func back() {
        dismiss(animated: true)
    }
}

extension OrderViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch items[indexPath.row] {
        case "a":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OrderCell.cell, for: indexPath) as! OrderCell
            
            return cell
        case "b":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SalesCell.cell, for: indexPath) as! SalesCell
            return cell
        case "c":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductCell.cell, for: indexPath) as! ProductCell
            return cell
        case "d":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PromoCell.cell, for: indexPath) as! PromoCell
            return cell
        case "e":
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PaingCell.cell, for: indexPath) as! PaingCell
            return cell
        default:
            print("Wrong cell")
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        switch items[indexPath.row] {
        case "a":
            return CGSize(width: self.view.frame.width, height: 200)
        case "b":
            return CGSize(width: self.view.frame.width, height: 280)
        case "c":
            return CGSize(width: self.view.frame.width, height: 450)
        case "d":
            return CGSize(width: self.view.frame.width, height: 220)
        case "e":
            return CGSize(width: self.view.frame.width, height: 250)
        default:
            print("Wrong size for cell")
            return CGSize()
        }
        
       
    }
    
    
}
